---
author: Luiz
title: 'Linguagens de programação - Javascript'
excerpt:
layout: post
category:
  - Opiniao
  - Programacao
tags:
  - javascript
  - JQuery
  - orientação a objetos
  - Programação funcional
  - Prototype
  - Rhino
  - Script
  - V8
post_format: [ ]
---
  
![O que isso tem a ver com Javascript?][1]
Rhino

  


Javascript é uma linguagem bastante conhecida por seu uso freqüente em páginas da Internet. Nessas páginas, é utilizada para tornar a página mais dinâmica e usável. Apesar do uso difundido, pouco se fala nas características mais técnicas dessa linguagem, de suas vantagens e desvantagens. Menos ainda se fala que essa linguagem também existe fora dos navegadores de Internet; é uma linguagem voltada para a programação de páginas da Internet, mas serve para tudo.  


Apesar do nome, Javascript não tem nada a ver com Java. É uma linguagem de programação baseada em [protótipos][2]. Não existem classes nem tipos, apenas objetos, que seguem um protótipo (um molde), que pode ser alterado em tempo de execução. Um objeto em Javascript é, na verdade, um mapa de chaves e valores, que associa um nome (de um atributo) a um outro objeto (também conhecido como mapa ou *hash*). Note que funções em Javascript também são objetos e, portanto, podem ser atribuídas a chaves nos objetos; assim surgem os métodos.

Como funções são objetos que podem existir por si só (ou seja, fora dos objetos), a linguagem permite o uso de técnicas de programação funcional: [fechamentos][3], [continuações][4], funções que devolvem funções etc. Os fechamentos são usados, por exemplo, para definir variáveis em escopos mais restritos e para definir *callbacks*.

Apesar dessas características, não há tantos recursos nativos na linguagem. Mas ainda há suporte básico a *strings*, *arrays*, *hashes*, expressões regulares e os recursos básicos para sua utilização na manipulação de páginas HTML (busca e alteração de componentes da página). Mas, como já comentamos [aqui][5] no blog, existem bibliotecas para facilitar seu uso nas páginas HTML e lhe dar mais poder. As duas mais famosas são [jQuery][6] e [Prototype][7]. Com essas bibliotecas, fica muito fácil fazer páginas dinâmicas. E isso sem encher seu código HTML de ids e campos sem sentido.

É possível utilizar Javascript fora do navegador, também, executando o código num interpretador Javascript. Os mais famosos (que são utilizados pelos navegadores das respectivas empresas) são o [Rhino][8], da Mozilla, e o [V8][9], da Google.

É lógico que Javascript não é perfeita. Além de não ser fácil de usá-la fora dos navegadores (outras linguagens de *script* são mais fáceis), nem sempre é fácil detectar erros no código. O código também não é modularizável com segurança, uma vez que não há como saber se todas as dependências do código estão satisfeitas até que o código seja executado. Isso a torna não muito boa para projetos grandes – de propósito pois, como o próprio nome diz, é uma linguagem de *script*, não destinada a grandes aplicações.

Graças às características da linguagem, o código fica elegante e razoavelmente fácil de entender. É claro que sempre é possível escrever código ilegível… A linguagem também é muito poderosa, como se pode notar pela diversidade de bibliotecas disponíveis na linguagem, com os objetivos mais diversos. 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][10] 





**Acompanhe-nos por [ RSS][11], por [Email][12] ou via [Twitter][13].**  
Veja como ter um desconto no [Dreamhost][14]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2008/10/rhino50-300x150.jpg "O que isso tem a ver com Javascript? Se você não sabe, leia :)"
 [2]: http://en.wikipedia.org/wiki/Prototype-based_programming
 [3]: http://en.wikipedia.org/wiki/Lexical_closure
 [4]: http://en.wikipedia.org/wiki/Continuation_passing_style
 [5]: http://vidageek.net/2008/09/17/boas-praticas-de-javascript-na-internet/
 [6]: http://jquery.com/
 [7]: http://www.prototypejs.org/
 [8]: http://www.mozilla.org/rhino/
 [9]: http://code.google.com/p/v8/
 [10]: https://twitter.com/share
 [11]: http://feeds.feedburner.com/VidaGeek
 [12]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [13]: http://twitter.com/blogvidageek
 [14]: http://vidageek.net/dreamhost/