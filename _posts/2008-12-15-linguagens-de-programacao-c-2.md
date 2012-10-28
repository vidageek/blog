---
author: Luiz
title: 'Linguagens de Programação - C'
excerpt:
layout: post
category:
  - C
  - Opiniao
  - Programacao
tags:
  - C
  - CWEB
  - kernel
  - knuth
  - linguagens de programação
  - Linux
  - máquinas virtuais
post_format: [ ]
---
C é uma das linguagens mais famosas e utilizadas que existem. Também, é bastante antiga, já que sua primeira versão é de 1972. Apesar da idade, ainda é muito utilizada devido à sua generalidade e velocidade. Aqui no VidaGeek, já publicamos uma série de posts sobre C (vide [Dia C][1]), então não vou falar sobre a sintaxe de C. Mas vou dar minha opinião sobre ela.



A linguagem C surgiu com o propósito inicial de ser utilizada para aplicações de sistema tais como *drivers*, utilitários de linha de comando e outras coisas de baixo nível ;). Por isso, é uma linguagem que não abstrai muito o *software* do *hardware*, permitindo ao programador manipular diretamente a memória e interagir diretamente com o sistema operacional por meio das *system calls*. Apesar desse propósito inicial, C foi e ainda é utilizado em diversas aplicações comerciais: jogos, editores de texto, aplicativos multimídia, dentre outros. Além disso, é utilizada em muitos lugares (inclusive aqui, no IME-USP) para ensinar programação e algoritmos.

Por ser uma linguagem com poucos recursos nativos, C tem poucas palavras reservadas, o que torna seu aprendizado um pouco mais fácil. A sintaxe é simples, também, e inspirou diversas outras linguagens: C++ (que, no início, era apenas uma extensão de C – veja o post polêmico e os comentários [aqui][2]), C#, Java, [JavaScript][3], Perl etc. que, por sua vez, inspiraram diversas outras. Ou seja, a sintaxe de C aparece quase que idêntica em muitos lugares (esse é um bom motivo para aprender C). Mas essa simplicidade toda pode se tornar bastante ilegível, como mostram os participantes do concurso *[Obfuscated C][4]*.

[![Exemplo de código C ofuscado][6]][6]
Exemplo de código C ofuscado

Um dos grandes atrativos de C é a eficiência do programa gerado, que, graças também a compiladores eficientes, é quase igual a de um programa escrito em código de máquina, pois é compilado diretamente para este, ou seja, não roda sobre nenhuma máquina virtual, como a maioria das linguagens novas (Ruby, Python, Java, Perl, Groovy, JavaScript etc.). Atualmente, porém, algumas máquinas virtuais são capazes de quase igualar o desempenho de um programa escrito em C, o que torna o motivo “eficiência” para a escolha de C como linguagem de um projeto discutível.

Eu, particularmente, gosto bastante de programar em C. Ter controle sobre os mínimos aspectos da programação, às vezes, é agradável e até fundamental (e, às vezes, é ruim, pois torna a programação menos produtiva). Em outros casos, pode se tornar chato e confuso, com todos aqueles ponteiros e memória sendo alocada e desalocada. Não recomendo desenvolver todo e qualquer programa em C; isso seria uma loucura hoje em dia, com tantas ferramentas mais produtivas por aí. Mas escrever um programa com algumas centenas de linhas em C é uma experiência que recomendo a todos os programadores pelo menos uma vez na vida! Outra experiência que recomendo: ler algum código C bem escrito, como o do *kernel* do Linux ou algum programa do Knuth (que, provavelmente, vai estar disponível para leitura como CWEB). 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][7], por [Email][8] ou via [Twitter][9].**  
Veja como ter um desconto no [Dreamhost][10]: um excelente servidor web.

 [1]: http://vidageek.net/series/
 [2]: http://vidageek.net/2008/08/18/linguagens-de-programacao-c/
 [3]: http://vidageek.net/2008/10/22/linguagens-de-programacao-javascript/
 [4]: http://www.ioccc.org/
 []: http://vidageek.net/wp-content/uploads/2008/12/codigo1.gif
 [6]: https://twitter.com/share
 [7]: http://feeds.feedburner.com/VidaGeek
 [8]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [9]: http://twitter.com/blogvidageek
 [10]: http://vidageek.net/dreamhost/
