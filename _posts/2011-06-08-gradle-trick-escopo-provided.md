---
author: Jonas Abreu
title: 'Gradle Trick - Escopo Provided'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Eu tenho brincado bastante com [gradle][1] (pretendo migrar todos meus projetos maven para ele).

Uma das coisas que precisei recentemente foi de algo semelhante ao escopo provided do maven. Aparentemente a [versão 1.0 terá suporte][2], mas eu precisava agora disso.

Coisa simples. Seguindo a dica do [Paulo Silveira][3] no issue, quase resolvi o problema.

O código para o escopo provided ficou mais ou menos assim (eventualmente talvez eu precise acrescentar mais algo):

    
    configurations {
    	provided //cria a configuração
    }
    
    sourceSets {
    	// acrescenta para compilar
    	main { compileClasspath += configurations.provided }
    	// acrescenta para compilar os testes
    	test { compileClasspath += configurations.provided }
    	// acrescenta para rodar os testes
    	test { runtimeClasspath += configurations.provided }
    }
    
    // faz o plugin do eclipse adicionar ao .classpath
    eclipseClasspath.plusConfigurations += configurations.provided
    
    dependencies {
    	// Use para adicionar as dependências como se fosse o compile ou testCompile.
    	provided group: 'javax.servlet', name: 'servlet-api', version: '2.5'
    }
    

**Posts Relacionados:** 
*   No related posts



[Tweet][4] 





**Acompanhe-nos por [ RSS][5], por [Email][6] ou via [Twitter][7].**  
Veja como ter um desconto no [Dreamhost][8]: um excelente servidor web.

 [1]: http://gradle.org
 [2]: http://issues.gradle.org/browse/GRADLE-784
 [3]: http://caelum.com.br
 [4]: https://twitter.com/share
 [5]: http://feeds.feedburner.com/VidaGeek
 [6]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [7]: http://twitter.com/blogvidageek
 [8]: http://vidageek.net/dreamhost/
