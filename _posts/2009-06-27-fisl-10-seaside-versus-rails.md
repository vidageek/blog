---
author: Luiz
title: 'FISL 10: Seaside versus Rails'
excerpt:
layout: post
category:
  - Discussões
  - Eventos
  - Fisl
  - OpenSource
  - Opiniao
  - Programacao
  - Ruby
tags:
  - fisl 10
  - Rails
  - seaside
  - smalltalk
post_format: [ ]
---
Na primeira palestra da qual participei (e a primeira que dei num evento público), falei, junto com o grande [Fabio Kung][1], sobre [Seaside][2], um arcabouço para desenvolvimento de aplicações para a Web escrito em [Smalltalk][3]. O Kung, é claro, falou de Rails.

O objetivo da palestra era mostrar que Seaside é muito melhor que Rails, mas o Kung não deixou (brincadeira!). Na verdade, o objetivo da palestra era mostrar coisas que são legais em ambos os arcabouços, e que um poderia aprender com o outro. É claro que nem tudo poderia ser copiado, já que as raizes dos dois tem algumas fortes divergências, como a aceitação do protocolo imposto pela Web (stateless) versus a subversão total dessa ideia (stateful, implementada pelo Seaside). Existem motivações para ambos: stateless, para respeitar a Web e ser mais escalável; stateful, para ser mais fácil de desenvolver e mais reutilizável.

Mostramos muito pouco de cada um dos arcabouços. A ideia era mostrar tópicos bem mais avançados. No fim, quase que não deu tempo de mostrar como criar um componente do Seaside.

Fiquei devendo uma resposta no meio da palestra. Quando falei que Seaside era baseado em componentes, inspirado no desenvolvimento para desktop, o [Diego Plentz][4] me provocou falando que era que nem VB; aliás, que VB era melhor porque, pelo menos, tinha uma interface gráfica para desenvolver componentes. Eu, com toda minha sagacidade, não consegui responder na hora :P. Mas a resposta é: VB não é linguagem o Seaside é baseado em componentes porque é fácil programar a interface pensando assim (senão o VB não era a linguagem inicial de tantos programadores por aí) e o Seaside melhora isso usando uma linguagem muito legal no lugar de VB.

As críticas que ficam a cada um dos arcabouços:

*   *Rails*: tem muita complicação no sistema de arquivos; para quê tantos arquivos e diretórios? Para que tantos arquivos de configuração? Por que a dependência do banco de dados, por padrão? Tudo bem, o escopo de Rails é bem pequeno, mas talvez as convenções estejam um pouco complicadas demais.
*   *Seaside*: faltam pacotes para acrescentar algumas tarefas comuns ao Seaside. Faltam, também, arcabouços de teste mais atualizados e com melhor documentação (não há um “Cucumber” e a documentação do [SSpec][5]). Por fim, o Smalltalk praticamente impõe uma IDE para você e impede o uso dos recursos utilizados em outras linguagens (SVN, pastebin, etc.)

Bom, é isso. Eu espero que as pessoas que compareceram a palestra tenham gostado e que eu tenha a oportunidade de dar novamente uma palestra no FISL. Foi uma experiência muito legal.

**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][7], por [Email][8] ou via [Twitter][9].**  
Veja como ter um desconto no [Dreamhost][10]: um excelente servidor web.

 [1]: http://fabiokung.com
 [2]: http://www.seaside.st
 [3]: http://vidageek.net/2008/08/27/linguagens-de-programacao-smalltalk/
 [4]: http://plentz.org/
 [5]: http://www.squeaksource.com/SSpec/
 [6]: https://twitter.com/share
 [7]: http://feeds.feedburner.com/VidaGeek
 [8]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [9]: http://twitter.com/blogvidageek
 [10]: http://vidageek.net/dreamhost/
