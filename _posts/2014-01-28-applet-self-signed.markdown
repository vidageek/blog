---
layout: post
title: Como criar uma Applet Java assinada por um certificado auto-assinado
author: Jonas Abreu
---

Para uma [Applet Java][2] conseguir interagir com hardware a partir de um browser, é necessário
que ela esteja assinada por um certificado digital. Mas certificados digitais não são muito
práticos para serem usados em desenvolvimento. 

Mas existe um tipo de certificado que nós mesmos podemos criar nas nossas máquinas em alguns
segundos. São chamados de certificados auto-assinados porque não foram assinados por nenhuma
Autoridade Certificadora.

## Antes de mais nada, declarando applet no seu html

Eu demorei um tempo considerável para conseguir carregar a applet na página simplesmente
porque eu não queria usar a tag [`<applet>`][3], pois ela é obsoleta e foi abandonada.

Para fazer isso com a tag [`<object>`][4], eu demorei bastante porque não existiam exemplos
funcionando em todos os sites que passei. Mas é bem simples:

	<object type="application/x-java-applet;version=1.7" id="seuId">
		<param name="code" value="nome.completo.da.sua.Classe" /> 
		<param name="archive" value="/jar-com-a-sua-classe.jar" />
	</object>

Os parâmetros são:

* type: Determina que esse objeto é uma applet java. O **version** estabele a menor versão 
que o browser precisa ter instalado para rodar a sua applet.
* id: serve para você utilizar a sua applet via javascript, o que é bem interessante.
* code: a sua classe que será carregada e que `extends JApplet` ou `extends Applet`.
* archive: é o caminho para o seu jar acessível pela internet.

## Criando um certificado auto assinado (self signed certificate)

Você poderia gerar um certificado X509 usando openssl e depois importá-lo para usar com Java,
mas para o que precisamos, apenas gerar uma keystore com um certificado já é o suficiente.

Se você tem o jdk instalado, provavelmente tem o [`keytool`][5] no seu path:

    keytool -genkeypair -alias alias -keyalg EC -keysize 571 -keystore keystore.jks

Esse comando vai pedir um monte de informações. Você não precisa preencher nenhuma
exceto a senha e **yes** para a última pergunta.

    Enter keystore password:  
    Re-enter new password: 
    What is your first and last name?
      [Unknown]:  
    What is the name of your organizational unit?
      [Unknown]:  
    What is the name of your organization?
      [Unknown]:  
    What is the name of your City or Locality?
      [Unknown]:  
    What is the name of your State or Province?
      [Unknown]:  
    What is the two-letter country code for this unit?
      [Unknown]:  
    Is CN=Unknown, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown correct?
      [no]:  yes
    
`keyalg` e `keysize` são opcionais. Por padrão será gerada uma chave RSA. Por uma razão 
aleatória eu queria uma que usasse curvas elípticas :)

`alias` é o nome do seu certificado **dentro** da keystore. Uma keystore pode ter vários
certificados. `keystore.jks` é o nome da keystore que será gerada.

Para verificar a sua keystore, você pode rodar o comando:

    keytool -list -keystore keystore.jks

## Fatjar

Sua applet provavelmente terá dependências, afinal você não quer ter que implementar tudo 
do zero.

Para resolver esse problema, quase toda ferramenta de automação (ant, maven, gradle) tem
um plugin que pega todas as dependências e coloca elas em um só jar. Em geral, o nome
desse plugin é [**fatjar**][6] ou **uberjar**. Como estou usando gradle, acrescentei as
seguintes linhas no meu build.gradle:

    buildscript {
        repositories {
            mavenCentral()
        }

        dependencies {
            classpath 'eu.appsatori:gradle-fatjar-plugin:0.2-rc1'
        }
    }

    apply plugin: 'fatjar'

Agora meu build tem uma task chamada `fatJar` que faz a mágica acontecer.

## Adicionando permissões de execução para a sua applet

Em algum update do Java 7, passou a ser necessário acrescentar ao MANIFEST.MF as permissões para
que a Applet pudesse acessar mais recursos. Basicamente você precisa acrescentar as seguintes 
linhas ao seu MANIFEST.MF:

    Permissions: all-permissions
    Codebase: http://seu-dominio.com https://seu-outro-dominio.com:8088

Basicamente, se você não colocar as permissões ela nem roda. E se o domínio a partir de onde
o usuário acessar a sua applet for diferente dos que estão no **Codebase**, sua applet
também não será carregada.

No meu **build.gradle** ficou mais ou menos assim:

    fatJar {
        manifest {
            attributes("Permissions": "all-permissions", "Codebase": "http://dev.local:8000")
        }
    }

## Removendo assinaturas antigas

Uma das dependências da minha applet era um jar assinado (do Bouncy Castle). Normalmente isso
não é um problema, mas como o fatJar juntou tudo em um único jar, quando você assinar o jar
ele ficará em um estado inconsistente (por causa dos arquivos da assinatura anterior). Com
certeza existe uma forma simples e elegante de fazer isso (assinar um jar que tem assinaturas
de outros jars), mas eu preferi simplesmente remover as assinaturas antigas e reassinar todo
o conteúdo:

    JAR=NOME_DO_SEU_JAR
    jar xvf $JAR                            # extrai o conteúdo do fatJar
    rm -rf $JAR                             # apaga o arquivo original
    rm -rf META-INF/*.SF                    # apaga assinaturas
    rm -rf META-INF/*.DSA 
    rm -rf META-INF/*.RSA
    jar cvmf META-INF/MANIFEST.MF $JAR *    # gera um novo jar, mantendo o MANIFEST.MF

Um erro que demorei para resolver foi manter o MANIFEST.MF. Eu achava que o comando `jar` iria
manter o MANIFEST.MF que estava na pasta, mas ele simplesmente sobrescreve. Especificando dessa
forma funcionou bem.

## Assinando applet usando jarsigner

Agora que você já tem o jar com as suas dependências e as permissões no MANIFEST.MF, assinar
o jar é bem simples usando o `jarsigner`:

    jarsigner -keystore keystore.jks SEU_JAR.jar alias

* `keystore.jk` é a sua keystore
* `alias` é o alias do seu certificado dentro da keystore (que geramos lá no começo do post)

## Verificando o seu jar com o jarsigner

Um passo muito importante é verificar que o seu jar foi assinado corretamente. Eu perdi algum 
tempo tentando rodar um applet com uma assinatura inválida (o jarsigner pode gerar assinaturas
inválidas silenciosamente...).

    jarsigner -verify SEU_JAR.jar

Deve gerar algo como:

    jar verified.

    Warning: 
    This jar contains entries whose certificate chain is not validated.
    This jar contains entries whose signer certificate will expire within six months. 
    This jar contains signatures that does not include a timestamp. Without a timestamp, 
    users may not be able to validate this jar after the signer certificate's expiration 
    date (2014-04-22) or after any future revocation date.

    Re-run with the -verbose and -certs options for more details.
    
A parte importante é aquele **jar verified** no começo. Os warnings são relativos à nossa
keystore, que geramos sem nos preocuparmos muito (tranquilo para desenvolvimento. Ruim para
produção.)

## Baixando o nível de segurança do seu browser

A última coisa que precisamos fazer é reduzir o nível de segurança do browser para que 
ele rode a applet auto-assinada. Hoje nenhum browser roda uma applet como essa por padrão.

Para fazer isso é só entrar no **Plugin Control Panel** do seu java, ir para a aba 
**Security** e reduzir para **Medium**.

## Usando applet a partir do JavaScript

Uma coisa muito legal que descobri é que é possível interagir com uma applet via javascript.

Mas isso tem alguns problemas. Dentro do modelo de segurança dos browser, javascript é
considerado como código que deve rodar dentro da sandbox (ou seja, não pode acessar 
muitos recursos fora do browser). A nossa applet foi assinada exatamente para acessar
recursos fora do browser. Se javascript acessa a applet, temos uma interação entre um
ambiente restrito com um sem restrições. Quando isso acontece o browser assume que a 
applet está sendo acessada de forma indevida e remove as permissões de acesso dela.

Para contornar esse problema, nós devemos executar o código da applet dentro de um block
**doPrivileged**:

    AccessController.doPrivileged(new PrivilegedAction<String>() {
			
			@Override
			public String run() {
                // Código que precisa de permissões elevadas
			}
	});

Outra coisa meio chata de interagir com applet via javascript é que quando algo dá errado,
você somente recebe uma exceção genérica (Error: Error calling method on NPObject.) no 
javascript.

O que fiz para contornar esse problema foi fazer com que o meu método devolvesse a mensagem 
de erro da exception lançada quando algo desse errado. Meio ruim, mas consegui debuggar dessa
forma.

## Reduzindo o tamanho com ProGuard

Um último detalhe que preciso melhorar da applet que criei é que ela ficou com 5Mb. Colocar
uma applet de 5Mb para um usuário baixar com conexão inconsistente não é algo muito 
razoável. Para resolver isso, estou pensando em usar o [ProGuard][1] para remover as classes
que não estou usando. Como uso muito pouco (acho) das dependências, acredito que somente isso
já seja suficiente. Se não for, o ProGuard ainda suporta redução do bitecode trocando as 
Strings de identificação de classes, métodos e campos. É só tomar cuidado com o que usa
reflection (que daí esses nomes passam a ser importantes).

[1]: http://proguard.sourceforge.net/
[2]: https://en.wikipedia.org/wiki/Java_applet
[3]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/applet
[4]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/object
[5]: http://docs.oracle.com/javase/6/docs/technotes/tools/solaris/keytool.html
[6]: https://github.com/musketyr/gradle-fatjar-plugin
