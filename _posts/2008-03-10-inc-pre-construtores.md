---
author: Jonas Abreu
title: 'INC - Pré construtores'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Java possui um bloco de código que é executado antes dos contrutores da sua classe, mas depois que sua classe já está carregada para a memória.

    
    public class Teste {
    	public static void main(String []args){
    		A a;
    		//Vamos criar 3 instâncias de A
    		for (int i = 0; i < 3; i++)
    			a = new A();
    		System.out.println("Depois de criar a instância");
    	}
    }
    
    class A {
    
    	static {
    		System.out.println("Bloco Estático");
    	}
    
    	{
    		System.out.println("Pré Contrutor");
    	}
    
    	A(){
    		this(0);
    		System.out.println("Construtor sem parâmetro");
    	}
    
    	A(int i){
    		System.out.println("construtor com parâmetros");
    	}
    }
    

Rodando esse código estranho, a saída é a seguinte:

    
    Bloco Estático
    Pré Contrutor
    construtor com parâmetros
    Construtor sem parâmetro
    Pré Contrutor
    construtor com parâmetros
    Construtor sem parâmetro
    Pré Contrutor
    construtor com parâmetros
    Construtor sem parâmetro
    Depois de criar a instância
    

Notem que o pré construtor só é executado uma vez para cada instância que você cria, independente se você chama vários construtores.

Mas a parte mais assustadora é que você pode ter vários pré construtores, e eles são executados na ordem em que aparecem na sua classe (quero ver alguém falar bem de Java agora ;) )

    
    public class Teste {
    	public static void main(String []args){
    		A a = new A();
    	}
    }
    
    class A {
    
    	{
    		System.out.println("Pré Construtor de Cima");
    	}
    
    	A(){
    		System.out.println("Construtor");
    	}
    
    	{
    		System.out.println("Pré Contrutor de Baixo");
    	}
    }
    

A saída é:

    
    Pré Construtor de Cima
    Pré Contrutor de Baixo
    Construtor
    

Bem feio, não? 
**Posts Relacionados:** 
*   No related posts

















