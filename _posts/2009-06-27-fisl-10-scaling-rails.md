---
author: Luiz
title: 'FISL 10: Scaling Rails'
excerpt:
layout: post
category:
  - Eventos
  - Fisl
  - Google
  - OpenSource
  - Programacao
  - Ruby
tags:
  - busca textual
  - caching
  - escalabilidade
  - Google
  - Rails
  - Ruby on Rails
post_format: [ ]
---
Na segunda palestra que assisti (na verdade terceira, mas a primeira não conta porque, infelizmente, dormi :P), Sylvestre Mergulhão deu continuidade à palestra do Fabio Akita e falou sobre escalabilidade utilizando Rails no site [RedeParede][1], um site de classificados com versões para toda a América Latina.

Sylvestre começou falando da performance do site e o sistema de indexação do Google (o Googlebot). Falou que o Googlebot afetava perceptivelmente a performance do site quando estava indexando e era responsável por aproximadamente metade das requisições. Levantou também algumas teorias sobre o Googlebot (parte que achei mais interessante na palestra):

1.  Sitemap em XML => mais visitas
2.  Rank também é determinado por capacidade do site de receber visitas
3.  Queda de serviço => menos indexação por um bom tempo
4.  Mais atualizações => mais indexação

Depois disso, Mergulhão falou um pouco sobre a estrutura física dos servidores do site. São seis máquinas atrás de um balanceador de carga, cada uma com cinco instâncias rodando atrás do NGINX. Falou também um pouco do memcached, utilizado para fazer cache de qualquer string, que está sendo utilizado em massa pelo site. Segundo ele, é uma biblioteca fácil de usar, apesar de pouca documentação. Deu também exemplos de configuração e de uso. Falou mais um pouco sobre problemas com caching (página muda de acordo com usuário) e sobre outros tipos de caching: de página (falou que era melhor usar o cache de HTTP com ETags), de ações (muito interessante: permite guardar o resultado de uma ação no cache; dobrou a capacidade de processamento do servidor deles) e de fragmentos (para guardar pedaços de páginas).

Por fim, falou um pouco sobre o ganho de performance e de tempo de desenvolvimento (por não ter que usar mais SQL) com o uso do [Sphinx][2].

O começo da palestra foi interessante, mas minha impressão final é de que o palestrante não ficou muito feliz com o resultado da migração do site, antes em PHP, para Rails. Outro comentário que posso fazer é que já trabalhei num projeto em Rails com Sphinx e a equipe não gostou muito; acabamos mudando para o [Solr][3]. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][5], por [Email][6] ou via [Twitter][7].**  
Veja como ter um desconto no [Dreamhost][8]: um excelente servidor web.

 [1]: http://redeparede.com.br/
 [2]: http://www.sphinxsearch.com/
 [3]: http://lucene.apache.org/solr/
 [4]: https://twitter.com/share
 [5]: http://feeds.feedburner.com/VidaGeek
 [6]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [7]: http://twitter.com/blogvidageek

