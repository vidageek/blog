---
author: Jonas Abreu
title: 'INC - Colisão de Nomes de Métodos'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
O que acontece quando uma classe sua implementa duas interfaces que tem um método com o mesmo nome? Compila!

    
    interface A {
    	void x();
    }
    
    interface B {
    	void x();
    }
    
    class C implements A, B {
    	public void x() {
    	}
    }
    

E quando sua classe herda um método que tem o mesmo nome do método de uma interface que ela implementa? Também compila!

    
    class A {
    	void x(){
    	}
    }
    
    interface B {
    	void x();
    }
    
    class C extends A implements B {
    	public void x() {
    	}
    }
    

Notem que A não precisa implementar B.

E quando você faz herança múltipla de interfaces? Mais uma que compila.

    
    interface A {
    	void x();
    }
    
    interface B {
    	void x();
    }
    
    interface C extends A,B {
    
    }
    

Essas aqui eu só acreditei na hora em que o compilador simplesmente não reclamou. Se um dia antes de eu fazer esses testes me perguntassem o que acontecia, eu falaria sem medo nenhum que não compilava. Mas compila. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


