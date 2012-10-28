---
author: Jonas Abreu
title: 'Dia C - Algoritmos Genéricos'

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
A construção de algoritmos genéricos é útil pois evita que você tenha que reescrever código muito semelhante para trabalhar com dados diferentes. Bons exemplos de algoritmos genéricos são o qsort e bsearch, ambos da stdlib.h . Eles são implementações de um algoritmo de ordenação e de busca em vetores de qualquer tipo de dado. Eles funcionam mais ou menos assim:  
- Além das informações óbvias, como o vetor a ser ordenado (base) ou item a ser procurado (key) e o tamanho deste vetor (nmemb), eles também pedem que você passe o tamanho em bytes de um item do vetor (size) e uma função de comparação para esses itens (comp). É aqui que começa a parte genérica do algorítmo.

Basicamente, onde numa implementação normal desses algoritmos você colocaria algum operador de comparação, você agora vai colocar uma chamada para a função de comparação. E onde estaria um operador de atribuição, você vai colocar, por exemplo, um memcpy copiando “size” bytes de uma posição para a outra. Dessa forma, seu algorítmo agora é capaz de funcionar para qualquer tipo de dado que você deseje usar. Mas qual a vantagem? Existem várias:

1.  Basta escrever o código do algorítmo uma vez, e depois você apenas precisa escrever a função de comparação, muito mais simples do que o algorítmo.
2.  Como o código será mais usado (pois está sendo reaproveitado), é cada vez menos provável que existam bugs, pois mais pessoas estarão testando esse código.
3.  Você reduz em muito o tempo de desenvolvimento de um projeto se já tiver libs genéricas para coisas como Estruturas de Dados, Serialização, etc.
4.  Você pode implementar alguns paradigmas de Orientação à Objetos, que muitas vezes ajudam em grandes projetos

O único problema disso é que o código fica meio “hard coded” e você precisa trabalhar com ponteiros de função que são feios. Mas isso você resolve criando uma camada a mais que esconde toda essa parte. Da até pra esconder mais coisas se você usar macros, mas isso é assunto de um próximo post.

Antes de implementar um algorítmo genérico, recomendo que olhem os posts sobre Ponteiros e Ponteiros de Função pois a base para os algorítmos genéricos são eles.

Mais informações: Boa pergunta… Nunca encontrei nada sobre isso. Deixem um comentário ou mandem um e-mail pra mim.

Próximo post: Tunning 
**Posts Relacionados:** 
*   No related posts

















