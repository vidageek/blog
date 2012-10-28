---
author: Jonas Abreu
title: 'Open Source Week - Scraper'
excerpt:
layout: post
category:
  - Java
  - OpenSource
  - Programacao
tags: [ ]
post_format: [ ]
---
O Terceiro lançamento é o [Scraper][1].

O Scraper é uma ferramenta para facilitar [Html Scrapping][2], ou seja, extrair dados de páginas html.

Existem diversas formas de extrair dados de páginas Html. Você pode usar [RegEx][3], [XPath][4], [DOM][5] traversal, entre outros.

O problema da maior parte dessas técnicas é que elas são write-only. Escreva uma vez e nunca mais entenda o que está lá.

O scraper foi desenvolvido como parte do [ProcurandoCursos][6]. Hoje, já é necessário analizar algumas centenas de sites para construir o índice de busca. E esse número não vai parar de crescer. Imaginem dar manutenção em algumas centenas de RegEx ou XPaths. Impossível.

Por isso mudamos completamente a estratégia. O que informamos ao scraper é a estrutura do html onde está a informação que queremos. O scraper faz o resto.

Algo como:

    
    	<h1>${capture}</h1>
    

Maiores informações na [página oficial][1]. 

Ah, infelizmente ainda não disponível em um repositório maven (vou resolver isso nas próximas semanas), mas você pode baixá-lo no [github][7] da [AdaptIdeas][8]. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][10], por [Email][11] ou via [Twitter][12].**  
Veja como ter um desconto no [Dreamhost][13]: um excelente servidor web.

 [1]: http://projetos.vidageek.net/scraper
 [2]: http://en.wikipedia.org/wiki/Web_scraping
 [3]: http://en.wikipedia.org/wiki/Regular_expression
 [4]: http://en.wikipedia.org/wiki/XPath
 [5]: http://en.wikipedia.org/wiki/Document_Object_Model
 [6]: http://www.procurandocursos.com.br
 [7]: https://github.com/adaptideas/scraper
 [8]: http://www.adaptideas.com.br
 [9]: https://twitter.com/share
 [10]: http://feeds.feedburner.com/VidaGeek



