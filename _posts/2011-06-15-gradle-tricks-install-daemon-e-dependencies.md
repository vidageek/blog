---
author: Jonas Abreu
title: 'Gradle Tricks - Install, Daemon e Dependencies'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Usando maven em outros projetos? Sem problemas.

    
    gradle install
    

Faz algo semelhante ao mvn install. Gera e copia os jars para a sua cache do maven no *~/.m2*.  
Você precisa do [maven plugin][1] para isso funcionar.

* * *

O gradle demora para começar a rodar sua task? A solução para isso é o [modo daemon][2]. Dessa forma ele não precisa esperar a JVM subir e aquecer, pois fica sempre rodando em background. Vi tasks caírem de 10s para 1s na minha máquina.

Para habilitar essa feature experimental, você pode passar um parâmetro (–daemon) quando rodar o gradle, mas lembrar sempre é chato.

Por isso, você também pode colocar em uma variável de ambiente:

    
    export GRADLE_OPTS="-Dorg.gradle.daemon=true"
    

Colocando isso no seu .bashrc (ou .bash_profile no Mac), o gradle sempre roda nesse modo.

* * *

O gradle resolve dependências de uma forma que me parece fazer mais sentido que o maven. Ao invéz de colocar no classpath as duas dependências conflitantes (com certeza vai dar problema), ele escolhe a mais recente (pode ser que dê problema).

Se precisar examinar as dependências e saber quais estão disponíveis (se você já sobreviveu a um classpath hell com o maven conhece o mvn dependency:tree):

    
    gradle dependencies
    

Com direito a output colorido. 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][3] 





**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://www.gradle.org/maven_plugin.html
 [2]: http://www.practicalgradle.org/blog/2010/11/gradle-daemon/
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/