---
author: Jonas Abreu
title: 'INC - Long Switch?'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Uma peculiaridade estranha do switch do java é que ele não funciona para o tipo long.

O switch funciona apenas para byte, short, char e int.

    
    public class Teste {
    	public static void main(String []args){
    		long l = 10;
    		switch (l){
    			case 10: System.out.println("Isso não compila");
    		}
    	}
    }
    

O código acima não compila. Isso acontece porque o switch espera um int (porque isso acontece já é outra história) e um long não pode ser convertido para int sem um cast, por causa da possível perda de precisão (afinal cabe muito mais coisa dentro de um long do que dentro de um int).

Todos os outros tipos podem ser promovidos para int sem nenhum problema (pois no int cabe mais do que em um byte, short ou char).

Em Java, T caber em O significa min(O) < min(T) e max(O) > max(T). Isso também vale para float e double, o que nos leva a montar a seguinte sequência de promoção automática:

char -> int  
byte -> short -> int -> long -> float -> double

O que parece estranho é o long usar 64 bits enquanto que o float usa só 32. Mas como obedecem à regra acima, a promoção é feita do mesmo jeito. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek

