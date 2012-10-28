---
author: Jonas Abreu
title: 'INC - Bloco Estático'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Em Java, existe um bloco de código que é executado no momento em que o ClassLoader pega a sua classe e carrega ela. Isso ocorre antes de existir uma instância da sua classe.

    
    public class Teste {
    	public static void main(String []args){
    		System.out.println("Antes de criar a variável");
    		A a;
    		System.out.println("Depois de criar a variável");
    		//Vamos criar 10 instâncias de A
    		for (int i = 0; i < 10; i++)
    			a = new A();
    		System.out.println("Depois de criar a instância");
    	}
    }
    
    class A {
    
    	static {
    		System.out.println("Bloco Estático");
    	}
    
    	A(){
    		System.out.println("Construtor");
    	}
    }
    </pre>
    <p></p>
    se você rodar esse código, a saída será:
    
    
        
        Antes de criar a variável
        Depois de criar a variável
        Bloco Estático
        Construtor
        Construtor
        Construtor
        Construtor
        Construtor
        Construtor
        Construtor
        Construtor
        Construtor
        Construtor
        Depois de criar a instância
        
    
    
    Notem que o ClassLoader coloca a sua classe na memória apenas uma vez, independente de quantas classes você instancia (ok. Eu já ouvi histórias de magos que conseguem fazer a VM executar o bloco estático várias vezes sem trocar o ClassLoader, mas não faço idéia de como fazer isso.).
    
    
    E Antes que os mais rigorosos gritem comigo, nada garante que a variável vai ser alocada entre as duas primeiras chamadas ao println. A VM pode simplesmente criar a variável antes das chamadas.
    **Posts Relacionados:**
    *   No related posts
    
    
    
          
            <g:plusone size="medium" count="false" href=""></g:plusone>
          
        
          
    
    
            [Tweet][1]
          
        
          
    
    
            
            
            
    
    
          
        
    
    **Acompanhe-nos por [
    RSS][2], por [Email][3] ou via [Twitter][4].**  
    Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


