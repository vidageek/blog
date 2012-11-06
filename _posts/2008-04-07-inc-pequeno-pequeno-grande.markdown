---
author: Jonas Abreu
title: 'INC - Pequeno + Pequeno == Grande?'

layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]

---
Continuando meu passeio pelas entranhas do Java, mais uma surpresa.

O que você acha que acontece com o seguinte código?

    
    public class Teste {
    	public static void main(String []args){
    		byte a = 2;
    		byte b = 3;
    		byte c = a + b;
    	}
    }
    

Não compila. Você troca byte por short. Também não compila. Troca por char e ainda não compila.

Isso acontece porque a VM considera que a probabilidade de você estourar o tamanho de um tipo pequeno quando faz alguma operação com ele é muito grande. Pensem. Se você colocar 64 em dois byte e somá-los, você já terá estourado. Até que faz um pouco de sentido, né?

Mas e nesse caso em que o código compila?

    
    public class Teste {
    	public static void main(String []args){
    		byte a = 2;
    		a += 100;
    	}
    }
    

Aparentemente somar 100 a VM deixa, mas e agora:

    
    public class Teste {
    	public static void main(String []args){
    		byte a = 2;
    		a = a + 1;
    	}
    }
    

Isso não compila. Dá erro porque a VM considera o 1 como int e um int nunca vai caber dentro de um byte. O outro caso funciona por algum motivo estranho… Você pode adicionar o quanto quiser com += que continua compilando, mesmo que estoure a variável. A única forma de forçar o terceiro exemploa a compilar é:

    
    public class Teste {
    	public static void main(String []args){
    		byte a = 2;
    		a = (byte)(a + 1);
    	}
    }
    

Isso compila porque você força o cast e assume toda a responsabilidade por qualquer erro que possa ocorrer. Mas o segundo exemplo é realmente perturbador…. 



















