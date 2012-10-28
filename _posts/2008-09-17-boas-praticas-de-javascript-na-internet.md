---
author: Luiz
title: Boas práticas de JavaScript na Internet
excerpt:
layout: post
category:
  - Blogroll
  - Dicas
  - Web 2.0
tags:
  - javascript
  - JQuery
post_format: [ ]
---
O blog SmashingMagazine, o qual já foi citado no nosso [Twitter][1], publicou um [post][2] ontem com dicas e boas práticas de jQuery (também já mencionado [aqui][3] no VidaGeek). Algumas das dicas são muito boas, e não se aplicam somente a jQuery, mas a JavaScript na Internet, em geral. Acho que vale a pena mencionar algumas aqui.



Para quem não sabe, o jQuery é uma biblioteca JavaScript com o objetivo de facilitar a geração de comportamento dinâmico em páginas HTML. Um dos grandes poderes da biblioteca são os seletores. Com eles, você pode facilmente se referir a algum elemento HTML da sua página simplesmente por meio de seu id, sua classe (neste último caso, você pode percorrer todos os elementos daquela classe) ou alguma outra propriedade. Vale a pena dar uma olhada nos [exemplos e na documentação do jQuery][4].

Com essa possibilidade, fica muito mais fácil extrair o comportamento dinâmico da sua página, e isso é bom, pois torna o código da página mais legível. Essa é a primeira dica do post: separar JavaScript de código HTML.

Outro erro grave (que eu já cometi uma vez) é assumir que o visitante do seu site vai acessá-lo com suporte a JavaScript. A partir disso, você começa a colocar um monte de coisas na sua página que só funcionam com JavaScript ativado. E se o visitante não tiver JavaScript ativado? Essa é a dica número 2 do post: nunca dependa de JavaScript para que seu site funcione. Você pode adicionar comportamento no seu site com JavaScript, mas nunca deixar o conteúdo do seu site visível apenas para quem tiver JavaScript ativado. No caso em que eu errei, apenas quem tivesse JavaScript ativado conseguiria ver os preços de um certo evento.

Essa última dica vale também para Flash, Shockwave, Java e qualquer outra funcionalidade que pode não existir ou estar desativada no navegador. A não ser que o propósito do site seja, por exemplo, fornecer jogos em Flash.

**Posts Relacionados:** 
*   No related posts













 [2]: http://www.smashingmagazine.com/2008/09/16/jquery-examples-and-best-practices/
 [3]: http://vidageek.net/2007/11/28/jquery-plugin/
 [4]: http://docs.jquery.com/Main_Page




