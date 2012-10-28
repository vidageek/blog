---
author: Jonas Abreu
title: Encoding hell

layout: post
category:
  - Dicas
  - Java
  - Programacao
tags:
  - arquivo
  - encoding
  - leitura
  - problema
  - utf-8
post_format: [ ]
---
[Encoding][1] é sempre um inferno. Se você nunca precisou brigar com encoding, pergunte para seus amigos e a cara deles dirá tudo.

Pensando nisso, sempre que inicio um projeto, defino qual deve ser o encoding para todos os arquivos que ficam dentro do projeto.

Não foi diferente nesse projeto. Como já é comum, definimos que tudo dentro do projeto deveria estar em [UTF-8][2]. Isso funcionou durante muito tempo. Controlamos bem todos os pontos de entrada para garantir que estivesse em UTF-8. Até mesmo em pontos que não tínhamos confiança em qual encoding estavam os dados, [usamos (com bastante sucesso) o ICU4J.][3]

Mas mesmo assim tivemos alguns problemas estranhos. Uma de nossas ferramentas funcionava muito bem no Linux, mas não tão bem no Windows e no Mac. Mas rodando ela de dentro do eclipse funcionava perfeitamente em todos os ambientes.

Depois de muito procurar, descobrimos que a causa eram problemas com encoding. Checamos novamente todos os pontos de entrada envolvidos e nada. Depois de muito sofrimento encontramos [um post que nos deu uma grande dica de qual era o problema][4] (no momento em que escrevo este post, o site parece estar fora do ar. [Clique aqui para ver o post na cache do Google][5]).

No post ele comenta sobre dois parâmetros da VM. O `-Dfile.encoding` e `-Dsun.jnu.encoding`. O que eles fazem? Controlam o encoding da leitura de arquivos. Triste, não? Não adianta você especificar seu encoding no momento da criação do seu `java.io.Reader`. Se a leitura for feita a partir do sistema de arquivos, será lido no encoding padrão do SO.

Para resolver o meu problema, foi apenas subir a VM especificando o encoding:

    
    java -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8
    

Ah, e não adianta usar o `System.setProperty`. As propriedades são usadas no momento em que a VM sobe.

Outra coisa, quem descobriu o post e a solução foi o [Edmilson Miyasaki, da Adaptworks][6].


*   No related posts












 [1]: http://en.wikipedia.org/wiki/Character_encoding
 [2]: http://en.wikipedia.org/wiki/Utf8
 [3]: http://vidageek.net/2010/03/31/como-descobrir-o-real-encoding-de-um-arquivo-em-java/
 [4]: http://happygiraffe.net/blog/2009/09/24/java-platform-encoding/
 [5]: http://webcache.googleusercontent.com/search?q=cache:pTzer_xns3YJ:happygiraffe.net/blog/2009/09/24/java-platform-encoding/+happygiraffe.net/blog/2009/09/24/java-platform-encoding/&hl=en&strip=1
 [6]: http://www.adaptworks.com.br





