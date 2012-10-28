---
author: Jonas Abreu
title: 'Dia C - Ponteiros de Função'
excerpt:
layout: post
category:
  - C
  - Dicas
  - Programacao
  - Tutoriais
tags:
  - C
  - Dicas
  - Programacao
  - Tutoriais
post_format: [ ]
---
Ponteiros talvez sejam uma das maiores causas de desistência da utilização de C quando você está começando a programar. Mas nesse momento, vamos falar apenas de um tipo bem específico: Ponteiros de função.

Em C toda função tem um endereço de memória associado a ela. Esse valor é lido através do nome da função. Portanto é possível fazer uma chamada indireta à função (através do ponteiro dela). Isso vai ser muito útil quando formos falar de algoritmos genéricos em C.

Um ponteiro de função é declarado da seguinte forma:  
TIPO (*NOME)(tipo1, tipo2, tipo3, tipoN);

Agora NOME armazena um ponteiro para a função com o protótipo acima. Para utilizá-lo, basta usar NOME como se fosse uma função. Isso parece não ter importância, afinal eu simplesmente declarei uma função no meio do código. Mas ela pode ser declarada no protótipo de uma função também e assim passar uma função para dentro de outra função, como faz o qsort da stdlib.h. No qsort, você passa uma função que ficará encarregada de fazer a comparação entre os elementos do vetor passado. Assim é possível escrever o código da função qsort apenas uma vez e utilizá-lo para ordenar qualquer tipo de vetor (desde que você escreva a função de comparação). Isso pode economizar um tempo incrível no processo de produção de código.

Mas essa é apenas uma das aplicações. Atualmente estou desenvolvendo um módulo de controle da física de um jogo. Quando fui analizar a colisão, ocorreu-me um problema. Eu deveria manter a física bem genérica (ela não deveria distiguir a forma do objeto durante a colisão) mas ao mesmo tempo deveria lidar com qualquer objeto modelado. A solução foi colocar dentro da struct física um ponteiro para a função que é responsável por obter o ponto de colisão no próprio tipo físico. Assim, quando a física é criada, também é passada esta função de controle e o problema foi resolvido. Sem utilizar ponteiros de função seria muito mais complicado resolver este problema.

Notas:  
1. Para obter o endereço de uma função não é necessário usar o operador ‘&’ (na verdade isso é um erro, a não ser que você queira o endereço do ponteiro), pois em C todas as funções já são ponteiros.  
2. Não é possível atribuir a um ponteiro de função uma função de protótipo diferente do protótipo do ponteiro.  
3. Cuidado para não perder a coerência. Não é porque funções têm protótipos iguais que elas terão fins semelhantes.

Este é mais um recurso de C que não é muito bem aproveitado (provavelmente por que a sintaxe é meio estranha).

Mais informações: ponteiro de função -> Google

Próxima semana, modificadores de variáveis e funções e as extensões GNUC. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek

