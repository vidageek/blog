---
author: Jonas Abreu
title: 'INC - Isso Não Compila!!!'
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Semana passada eu comecei a estudar para a certificação de programador Java da Sun (SCJP). Como estou vendo algumas coisas bem diferentes do java-arroz-com-feijão que todo mundo conhece, estarei postando sobre isso nas próximas semanas (e assim eu não serei o único ficando com os cabelos brancos).

Algumas coisas do que vou falar na verdade nem caem na prova de certificação, mas são bem interessantes. Vamos lá então.

    
    class A {
    	public void x(){
    		//Uma implementação qualquer
    	}
    }
    
    abstract class B extends A {
    	@Override
    	abstract public void x();
    }
    
    class C extends B {
    	@Override
    	public void x(){
    		//Outra implementação qualquer
    	}
    }
    

Olhem que divertido. A classe A declara e implementa x(). A classe B sobrescreve o método x() de A com um método abstrato. A classe C, que não é abstrata então é obrigada a implementar o método x().

É interessante o java permitir que você sobrescreva um método com um método que nem implementação tem ainda. 

Você ainda poderia modificar um pouco o código e fazer com que o método da classe C fosse final que tudo ainda continuaria compilando. Mágico, não? 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek

