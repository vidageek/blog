---
author: Jonas Abreu
title: 'INC - Pilha de Construtores'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Quando criamos o construtor da nossa classe, mesmo que não coloquemos explicitamente uma chamada ao construtor da classe mãe, a chamada ao construtor da classe mãe é a primeira coisa que acontece no nosso construtor.

Vejam as seguites classes:

    
    class A {
    	A(){
    		System.out.println("Construtor A");
    	}
    }
    
    class B extends A{
    	B(){
    		System.out.println("Construtor B");
    	}
    }
    
    class C extends B{
    	C(){
    		System.out.println("Construtor C");
    	}
    }
    
    class D extends C{
    	D(){
    		System.out.println("Construtor D");
    	}
    }
    

Se dermos *new D()*, a saída será:

    
    Construtor A
    Construtor B
    Construtor C
    Construtor D
    

Isso garante que todas as ancestrais da sua classe estejam inicializadas antes da sua classe ser inicializada. 
**Posts Relacionados:** 
*   No related posts



[Tweet][1] 





**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek
 [5]: http://vidageek.net/dreamhost/
