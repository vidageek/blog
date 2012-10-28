---
author: Luiz
title: Programação Dinâmica
excerpt:
layout: post
category:
  - Dicas
  - Programacao
tags:
  - algoritmos
  - combinatória
  - programação dinâmica
post_format: [ ]
---
Uma das estratégias de resolução algoritmica de problemas mais difíceis de ser aplicada, na minha opinião, é a [programação dinâmica][1]. Mas existem alguns truques que facilitam o desenvolvimento de algoritmos baseados nessa idéia.

A maior dificuldade de se usar este método é encontrar a poderosíssima fórmula de recorrência. Uma vez encontrada, o algoritmo está quase pronto. O problema é que, para encontrar a fórmula de recorrência, é preciso pensar recursivamente, afinal programação dinâmica é praticamente uma recursão memorizada.

Vejamos um exemplo: o jogo da velha (inspirado pelo Rafael Izbicki, que me enviou um jogo da velha). Como fazer a melhor jogada em um determinado momento? Uma solução possível é tentar todas as jogadas possíveis até o fim, usando recursão (a melhor jogada para agora é a que ganha supondo que meu adversário vai fazer a melhor depois da minha, e assim por diante), e então escolher uma que dê um bom resultado. Mas, sem guardar as contas, testaríamos muitas vezes as mesmas jogadas. Então por que não guardar todas as seqüências de jogadas possíveis? Se fizermos isso, podemos até manter uma base de dados com todas as melhores jogadas para cada situação.

Note que, podendo memorizar todos os resultados, basta executar o algoritmo apenas uma vez e já teremos todos os resultados. Sem memorização, além de calcular várias vezes as mesmas jogadas, teríamos que executar o algoritmo a cada jogada.

Lógico que nem todo caso é fácil de resolver que nem o exemplo acima. Mas a idéia fundamental por trás da programação dinâmica é a recursão. Então, quando surgir um problema para o qual você tem uma solução recursiva, veja se não é possível memorizar a recursão.

Veja mais exemplos [aqui][2]. Note que, em todos, a idéia é tentar dar um passo, ver o que acontece até o fim e aprender com o resultado. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_din%C3%A2mica
 [2]: http://vidageek.net/wp-content/uploads/2008/02/progdin.pdf "Programação Dinâmica"





