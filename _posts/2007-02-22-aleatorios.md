---
author: Breno Franco
title: Aleatórios
excerpt:
layout: post
category:
  - Programacao
tags:
  - aleatoriedade
  - aleatorio
  - caos
  - geek
  - Misc
  - OpenSource
  - Programacao
post_format: [ ]
---
Como todo <strike>geek</strike> <strike>nerd</strike> programador está cansado de saber, nem todo random é aleatório.

Um instante para que você possa digerir isso.

É isso aí. Engana-se quem pensa que números aleatórios são facilmente obtidos num sistema computacional com uma função matemática recorrente e um número inicial, a semente (ou seed, como preferem as linguagens) . Se você fizer isso, obterá números **pseudo**aleatórios (que, de alguma forma, ainda possuem algum resquício de ordem) porque:

*   computadores são máquinas determinísticas (mas se alguém provar que P = NP, pode ser um dia haja um algoritmo para gerar números verdadeiramente aleatórios em tempo polinomial)
*   as funções mais comumente usadas são, em geral, periódicas (não se preocupe, o período é grande o suficiente para aquele jogo legal que você está rascunhando)
*   se a mesma semente for dada, a seqüência de números emitida pelo gerador será exatamente a mesma (em essência, aqui está a não-aleatoriedade)

Agora você se pergunta: “Então, como raios vou conseguir números verdadeiramente aleatórios?”

E, para variar, já existe uma resposta. Há grupos de pessoas determinadas a gerar números aleatórios de verdade. Para isso, é necessária uma fonte de entropia (vocábulo leigo: desordem), como, mas não limitado a: antenas captando ruído branco, oscilações de temperatura do processador (ou do ambiente!), ou um sensor CCD captando luminosidade de fundo.

A partir daí, basta traduzir esses sinais caóticos para um formato digital, filtrá-los se necessário, pegar os bits de uma maneira que interesse, e pronto! Aí está o seu número, letra, ou o-que-quer-que-seja aleatório.

Sim, é mais fácil falar do que fazer.

Para ler mais:

Se você não quiser ter todo esse trabalho, o pessoal do **[random.org][1]** fornece bits aleatórios para você, de graça, e você pode até pegá-los em tempo real para sua aplicação Java.

Tem também o [**LavaRnd**][2], onde eles usam um [sensor CCD][3] (como o que há em uma webcam) como fonte caótica, e têm um [projeto no Sourceforge][4] que contará com o código fonte necessário para todo mundo gerar seus próprios bits aleatórios. 
**Posts Relacionados:** 
*   No related posts












 [1]: http://random.org
 [2]: http://www.lavarnd.org/what/how-it-works.html
 [3]: http://www.lavarnd.org/image/ccd-closeup2.jpg
 [4]: http://sourceforge.net/projects/lavarnd





