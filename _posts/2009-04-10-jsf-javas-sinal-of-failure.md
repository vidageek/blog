---
author: Jonas Abreu
title: "JSF - Java's Signal of Failure"
excerpt:
layout: post
category:
  - Java
  - Programacao
tags:
  - herança
  - stack
  - vector
post_format: [ ]
---
Não. Isso não é um post para falar mal de JSF (embora eu tenha motivos para isso). É apenas o começo de mais uma série com um nome quase comico e estranho (como [SNL][1] e [INC][2]).

Mas sobre o que é essa série? Bom, toda linguagem de programação, conforme envelhece, começa a apodrecer. Se você ainda tiver uma filosofia de manter 100% de compatibilidade com as versões anteriores, muito lixo começa a se acumular. O Objetvo dessa série e mostrar parte desse lixo que tenho encontrado durante esse tempo que trabalho com java.

Chega de enrolar vocês. Vamos à um dos casos que mais me dá calafrios.

    public class Stack<E> extends Vector<E>

Essa é umas das linhas mais assustadoras que encontrei passeando pelo código da JDK. O que ela diz? Que uma pilha **É** um vetor. Por que isso é ruim? Vamos lá!

1.  A pilha é uma estrutura que depende da ordem em que os elementos se encontram dentro dela. Mas como é um Vector, você pode alterar qualquer posição dela sem problemas. Isso destrói qualquer algoritmo que dependa de uma pilha.
2.  Alguém notou que Stack é uma classe e não uma interface? Esqueçam qualquer possibilidade de uma outra implementação para pilhas. Se você usar uma Stack, seu código estará preso à essa implementação. Modificações de comportamento só podem ser feitas via herança, o que é péssimo.
3.  Stack deveria ser um objeto com pouquissimas operações. No entanto, se você olhar a API pública de Stack verá muitos métodos. Muito mais do que deveria existir. Mais complexidade para seu dia de trabalho.
4.  Isso foi feito por preguiça! Qualquer aluno de Ciência da Computação faria uma classe Pilha que **TEM** um Vector.

Paro por aqui pois ainda tem muita sujeira por vir. 
**Posts Relacionados:** 
*   No related posts



[Tweet][3] 





**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://vidageek.net/2007/08/03/snl-a-arte-da-guerra/
 [2]: http://vidageek.net/2008/02/25/inc-isso-nao-compila/
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/
