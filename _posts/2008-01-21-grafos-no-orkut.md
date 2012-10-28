---
author: Jonas Abreu
title: Grafos no Orkut
excerpt:
layout: post
category:
  - Google
  - Programacao
tags:
  - Google
  - Programacao
post_format: [ ]
---
Essa é mais uma feature que o Google possui que está acelerando o processo de calvicie em mim.

Todo mundo conhece o orkut. Aquele sistema bobo, sem muita utilidade concreta mas que faz um sucesso absurdo (Inclusive, [existe uma comunidade do VidaGeek.net lá][1]).

O que muitos não notam é um pequeno detalhe que aparece quando você está no perfil de outra pessoa. O Orkut mostra pra você o caminho mais curto entre você e essa outra pessoa (atravéz de amigos).

![Grafos no orkut][2]

O que que isso tem de assustador? É apenas uma busca em um grafo… Com milhões de vértices. Faça um programa simples que faz uma busca em um grafo com milhões de vértices e você vai entender do que estou falando. Demora muito mais do que uma requisição no Orkut pode demorar.

Ou seja, tudo isso está pré-calculado. Quando você acessa o perfil de outra pessoa, o algoritmo já rodou e ele simplesmente recupera a informação e devolve para você.

O jeito mais simples de fazer isso? Um [Floyd-Warshall][3] modificado (para não levar o peso das arestas em consideração), com complexidade O(n^3) rodado quando algum usuário se cadastra no Orkut ou sai dele.

Isso não funciona. Com a quantidade de usuários que o orkut tem, ele teria saido do ar há muito tempo se fosse desse jeito. Uma estratégia lazy (rodar apenas de tempos em tempos) também não ajuda muito, pois ocupa muito espaço em disco (quando o orkut foi criado, ele manteve vários milhares de usuário apenas com um computador comum como servidor).

O que é mais possível, então? Uma boa Heurística. Hoje mesmo eu notei que têm alguns profiles que eu entro e não aparece a sequência de usuários. Portanto, o que deve ser feito é estabelecer um limite na profundidade da busca, baseado nos seus amigos e nas comunidades em que você participa. Isso reduz de milhões de usuários para milhares de usuários. Mesmo assim ainda acho que é um esforço computacional muito grande e provavelmente deve ser rodado de forma lazy (especialmente se você lembrar que já está sendo usada uma heurística e nem sempre vai aparecer o caminho). 
**Posts Relacionados:** 
*   No related posts










Veja como ter um desconto no [Dreamhost][8]: um excelente servidor web.

 [1]: http://www.orkut.com/Community.aspx?cmm=44400470
 [2]: http://vidageek.net/public/images/grafo_orkut.png
 [3]: http://en.wikipedia.org/wiki/Floyd-Warshall_algorithm





