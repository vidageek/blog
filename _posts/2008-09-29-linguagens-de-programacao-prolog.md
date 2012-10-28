---
author: Luiz
title: 'Linguagens de programação - Prolog'
excerpt:
layout: post
category:
  - IA
  - Opiniao
  - Programacao
tags:
  - Análise Sintática
  - Bancos de Dados
  - IA
  - Inteligência Artificial
  - Lógica
  - Programação Declarativa
  - Programação Lógica
  - prolog
post_format: [ ]
---
![Coloração de mapas][1]  
Continuando com nossa série sobre linguagens de programação, vou falar um pouco sobre um linguagem um tanto estranha, mas muito poderosa: Prolog. Ao contrário das outras linguagens já abordadas (vide acima), [Prolog][2] não é uma [linguagem imperativa][3], na qual você “dá ordens” para o computador, mas sim uma [linguagem declarativa][4], na qual você “diz” para o computador como é o problema que seu programa deve resolver.



A princípio, isso pode parecer mágica, mas existe toda uma [teoria de lógica][5] por trás. Um programa em Prolog é, na verdade, um conjunto de fatos, predicados e regras de derivação de lógica. Uma execução de um programa é, na verdade, uma prova de um teorema, iniciada por uma consulta. Confuso? Vamos dar um exemplo:

`<br />
pai(joao, jose).<br />
pai(jose, manoel).</p>
<p>avo(Avo, Neto) :-<br />
pai(Avo, Filho),<br />
pai(Filho, Neto).<br />
`

O trecho de código acima define dois fatos: “joao” é pai de “jose” e “jose” é pai de “manoel”. Também define uma regra de derivação: a regra avo. A regra diz: um Avo é avô de um Neto se o Avo é pai de um Filho e (a vírgula faz o papel do conectivo lógico “e”) esse mesmo Filho é pai de um Neto. Note as letras maiúsculas no começo dos nomes; variáveis, em Prolog, devem começar com letra maiúscula (se não começar com letra maiúscula, ou é regra, ou é predicado ou é símbolo). Note, também, o ponto final no fim de cada fato e da regra: outro requisito da sintaxe de Prolog.

Agora, suponha que você queira saber quem são os netos de “joao”. Para isso, faz-se uma consulta, que é da seguinte forma:

`<br />
?- avo(joao, X).<br />
`

Note que passamos uma variável para a consulta (o X). Quando fazemos isso, o Prolog procura por todos os símbolos que satisfazem a consulta. Esse é o maior poder do Prolog: a busca. Toda consulta é uma busca numa árvore de possíveis soluções para a satisfação da consulta (ou para a prova do teorema).

Esse conceito de busca num espaço de estados vem das pesquisas em [inteligência artificial][6], e é uma idéia fundamental na área. Aliás, justamente por isso, Prolog é bastante utilizado em aplicações de inteligência artificial. Graças a busca, programas em Prolog tendem a ser bastante compactos.

É possível, também, fazer um paralelo com bancos de dados. Os fatos podem ser vistos como entradas em tabelas; as regras de derivação, como consultas, só que mais genéricas, pois não restringem os valores buscados (apenas definem a relação entre os dados de entrada e os resultados esperados).

Outro recurso interessante da linguagem é o suporte simples a [gramáticas de cláusulas definidas][7] (uma tradução livre de *DCG – definite clause grammar*). Explicando sucintamente, o Prolog oferece um modo fácil de descrever uma sintaxe, permitindo escrever código para análise sintática simplesmente descrevendo a sintaxe.

Para utilizar a linguagem, é necessário um interpretador. Recomendo o [SWI-Prolog][8]. É possível ligar o interpretador com programas em outras linguagens, mas nunca fiz isso.

Apesar de tudo isso, Prolog também tem seus problemas. Além de ser necessário um pouco mais de cuidado para não escrever programas extremamente ineficientes, leva um tempo para se acostumar a pensar do modo necessário para programar declarativamente. Prolog é uma linguagem boa para se escrever alguns tipos de algoritmos, mas para a maioria das aplicações não é tão boa. A modularização também é um ponto fraco da linguagem (e da teoria da lógica, em geral). Talvez por esses problemas, a linguagem aparece como “acadêmica” na Wikipédia.

Resumindo, Prolog é uma linguagem interessante de se aprender; estimula um tipo de raciocínio diferente, mais lógico e mais recursivo. Também facilita muito a vida em alguns tipos de problemas.

**Nota**: a imagem do post remete ao problema de colorir mapas utilizando um número fixo de cores, um problema bastante difícil, mas que pode ser facilmente programado em Prolog. A imagem foi retirada [deste site][9], que fala mais sobre o problema. 
**Posts Relacionados:** 
*   No related posts



[Tweet][10] 





**Acompanhe-nos por [ RSS][11], por [Email][12] ou via [Twitter][13].**  
Veja como ter um desconto no [Dreamhost][14]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2008/09/mapas-300x266.jpg "Coloração de mapas"
 [2]: http://pt.wikipedia.org/wiki/Prolog
 [3]: http://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_imperativa
 [4]: http://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_declarativa
 [5]: http://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_l%C3%B3gica
 [6]: http://pt.wikipedia.org/wiki/Intelig%C3%AAncia_artificial
 [7]: http://pt.wikipedia.org/wiki/Gram%C3%A1tica_de_cl%C3%A1usulas_definidas
 [8]: http://www.swi-prolog.org/
 [9]: http://www.lcad.icmc.usp.br/~nonato/ED/Coloracao/coloracao.html
 [10]: https://twitter.com/share
 [11]: http://feeds.feedburner.com/VidaGeek
 [12]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [13]: http://twitter.com/blogvidageek
 [14]: http://vidageek.net/dreamhost/
