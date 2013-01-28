---
author: Jonas Abreu
title: 'INC - Colisão de Nomes de Métodos'
layout: post

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



















