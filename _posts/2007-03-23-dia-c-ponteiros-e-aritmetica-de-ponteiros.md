---
author: Jonas Abreu
title: 'Dia C - Ponteiros e Aritmética de Ponteiros.'
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
  - ponteiros
  - Programacao
  - Tutoriais
post_format: [ ]
---
Enfim chegamos ao assunto que causa dor de cabeça à maioria dos programadores iniciantes (e à muitos veteranos também). É complicado trabalhar com a referência ao invés de trabalhar com o objeto.

Basicamente, um ponteiro é a posição de memória onde está a estrutura. Se pensarmos na memória como um vetor, o ponteiro é um índice desse vetor. Em C, um ponteiro simplesmente indica uma posição de memória e nada mais. Todo o resto da informação (como, por exemplo, que tipo de estrutura é apontada) existe apenas em tempo de compilação. Em tempo de execução memória é simplesmente memória e nada mais. Isso permite um maior controle sobre ela. É possível com um simples cast mudar totalmente a forma como ela é tratada. Por exemplo, é possível transformar um vetor de inteiros em um vetor de char. Internamente a única coisa que mudou é quantos bytes tem a estrutura do vetor. Isso também vale para casts de ponteiro de estruturas.

Tá, mas o que eu faço com todas essas mudanças? Simples. Sabendo de tudo isso é possível agora aproveitar-se disso. Por exemplo, você pode fazer uma alocação de centenas de bytes e utilizá-la como vários objetos diferentes em sequência, dessa forma criando um semi-alocador de memória muito mais rápido do que o malloc (o custo do malloc ficará dividido entre os vários objetos). Mas para isso é necessário entender um pouco de aritmética de ponteiros.

Quando você soma 1 a um inteiro, ele simplesmente incrementa o inteiro. Se ele valia 2 passa a valer 3. Com ponteiros é um pouco diferente. Cada vez que você incrementa um ponteiro a seguinte conta é feita (sendo aux o ponteiro e código aux++):

aux += sizeof(*aux)

Ou seja, quando você incrementa o ponteiro ele na verdade é incrementado com o samanho do objeto para o qual ele aponta, em bytes. Vale lembrar que é o mesmo cálculo realizado para acessar a posição de um vetor (esse cálculo é invisível pois você usa [ e ]). Se você usar soma normal, ele fará algo assim:

aux += N\*sizeof(\*aux)

Com N sendo o número que foi somado ao ponteiro.

Com tudo isso, é possível fazer algumas “bizarrices” não recomendadas, mas que funcionam muito bem se você vai produzir algum software pequeno e que você consegue entender de ponta a ponta:

*   Se você colocar em seus objetos uma convesão de que o primeiro byte serve para a identificação do tipo de objeto (todos seus objetos terão um char para id e ele será o primeiro item da estrutura). Dessa forma você criou suporte a algo que o C não suporta: polimorfismo. Sabe em Java quando você cria uma interface e qualquer objeto que atenda essa interface pode ser passado como parâmetro sem problemas de compilação? Pois é. Internamente o princípio é semelhante. Sem contar que também é possível descobrir que tipo de objeto ele é em tempo de execução e pode processá-lo de acordo, como você faz em Java com o comando instanceof.
*   Para carregar um vetor de ponta a ponta, é mais eficiente você usar aritmética de ponteiro ao invés de loop, pois no loop você tem o incremento do contador e a multiplicação para chegar ao lugar desejado. Se os dados estão em sequência, précalcule (se possível) o fim do vetor e avance posição a posição usando incremento simples. Isso vai poupar bastante tempo se for feito em uma zona de gargalo computacional.
*   Voltando ao exemplo do alocador, se você estruturar um sistema que faça alocação de grandes blocos e depois separe-os em pequenos pedaços, para ter um semi-alocador (ele não aloca na verdade, ele apenas distribui a memória) rápido basta colocar um contador para saber quando o bloco acabou. Você gasta um pouco mais de memória com isso, mas nada muito relevante comparado ao desempenho, desde que você tenha muitos pedidos de blocos pequenos.
*   Da pra fazer várias outras mágicas com ponteiros em C, mas com essas três já é possível fazer muita coisa.

Próxima semana: Algoritmos genéricos em C 
**Posts Relacionados:** 
*   No related posts










Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.






