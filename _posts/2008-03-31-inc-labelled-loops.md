---
author: Jonas Abreu
title: 'INC - Labelled Loops'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Opiniao
  - Programacao
tags: [ ]
post_format: [ ]
---
Quem disse que java é bonito? C pelo menos tem a coragem de assumir que tem **goto**. Java disfarça na estrutura que chamamaram de Labelled Loops.

Brincadeiras a parte, embora o goto seja uma palavra reservada do Java, ele não está implementado. Como a única razão para se manter o goto em uma linguagem é você poder quebrar vários laços de uma vez (o que costuma indicar que seu código não deve estar muito bom), Java simplesmente permite que você de nomes aos seus laços e passe, como parâmetro para **break** e **continue** o label do seu loop.

    
    public class Teste {
      public static void main(String []args){
    
      externo:for (int i = 0; i < 10; i++){
                     System.out.println("i = " + i);
                     interno:for (int j = 0; j < 20; j++){
                                   System.out.println("j = " + j);
                                   if (j < 4 && (j & 1) == 0)
                                     break interno;
                                   if ((i * j) / 5 > 0)
                                     break externo;
                                }
                   }
      }
    }
    

Quando você rodar esse código feio e nojento, a saída será:

    
    i = 0
    j = 0
    i = 1
    j = 0
    i = 2
    j = 0
    i = 3
    j = 0
    i = 4
    j = 0
    i = 5
    j = 0
    i = 6
    j = 0
    i = 7
    j = 0
    i = 8
    j = 0
    i = 9
    j = 0
    

Fiz o código bem feio pra deixar bem claro que embora exista, isso não deve ser usado nos seus códigos. Um simples break já pode causar confusão. Imaginem um monte de break e continue com uma palavra na frente. Você praticamente está condenando seu projeto ao fracasso (por que dois dias mais tarde você não conseguirá entender o que está escrito). 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][1] 





**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek
 [5]: http://vidageek.net/dreamhost/