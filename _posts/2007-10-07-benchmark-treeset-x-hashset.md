---
author: Jonas Abreu
title: Benchmark TreeSet x HashSet
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags:
  - Dicas
  - Java
  - Programacao
post_format: [ ]
---
Quando estudamos estruturas de dados, aprendemos que um [Hash][1], no caso médio (ou no caso de um [hashing perfeito][2]) é mais rápido (possui menor [complexidade][3]) que uma árvore balanceada, como a [árvore Rubro-Negra][4]. A teoria nos prova isso. E na prática?

Rodei o seguinte programa para comparar os dois:

    
    package net.vidageek.benchmark;
    
    import java.util.HashSet;
    import java.util.Set;
    import java.util.TreeSet;
    
    public class DumbHashTreeBenchmark {
    
    	private static final int INCREMENTO = 500000;
    
    	private static final int MAX_BEFORE_CRASH = 2000001;
    
    	public static void main(String[] args) {
    		for (int i = 0; i < MAX_BEFORE_CRASH; i += INCREMENTO) {
    			Set<Integer> hash = new HashSet<Integer>();
    			Set<Integer> tree = new TreeSet<Integer>();
    
    			System.out.println("Teste: n = " + i + " Tempo Hash: "
    					+ popula(hash, i) + " Tempo Árvore: " + popula(tree, i));
    
    		}
    
    	}
    
    	private static long popula(Set<Integer> set, int n) {
    		long inicio, fim;
    		inicio = System.currentTimeMillis();
    		for (int i = 0; i < n; i++)
    			set.add(i);
    		fim = System.currentTimeMillis();
    		return fim - inicio;
    	}
    }
    

O resultado disso parece bem estranho (o tempo está em milisegundos):

| Itens inseridos | **HashSet** | **TreeSet** |
|:---------------:| ----------- |
|                 |             |             |
|      5x105      | 808         | 598         |
|     10x105      | 1102        | 797         |
|     15x105      | 2087        | 2381        |
|     20x105      | 1676        | 5439        |

Porque que nos dois primeiros testes o TreeSet foi mais eficiente que o HashSet? Em teoria o HashSet deveria ser mais rápido, não é? Não. 

Usar um Hash é muito eficiente sob certas condições:

1.  A tabela de hashing é consideravelmente maior que a quantidade de itens a serem inseridos nela;
2.  A [função de hashing][5] é boa.

Embora eu não tenha visto a implementação da função de hashing, tenho certeza de que ela é boa. Uma empresa do tamanho da Sun não arriscaria o nome com algo tão besta. Então o problema só pode ser a tabela de hashing.

Como não disse qual deveria ser o tamanho da tabela, ela foi criada com o [valor padrão (16)][6]. Como eu tentei inserir uma quantidade muito superior ao tamanho da tabela, ela teve que ficar sendo realocada. Essa operação chama-se re-hashing e é possui custo muito alto, porque envolve alocação de uma nova tabela maior que a anterior e cálculo da função de hashing de todos os elementos dentro dela. Basicamente um novo HashSet é contruído a cada vez que a tabela fica com itens demais. O tempo que é perdido com essa operação da uma vantagem bem grande para o TreeSet que acaba tendo um desempenho melhor por falha do programador. Para mostrar isso fiz uma pequena modificação no main do programa anterior:

    
    public static void main(String[] args) {
    	for (int i = 0; i < MAX_BEFORE_CRASH; i += INCREMENTO) {
    		Set<Integer> hash = new HashSet<Integer>(<strong>2*MAX_BEFORE_CRASH</strong>);
    		Set<Integer> tree = new TreeSet<Integer>();
    
    		System.out.println("Teste: n = " + i + " Tempo Hash: "
    				+ popula(hash, i) + " Tempo Árvore: " + popula(tree, i));
    
    	}
    }
    

Vejam a diferença assustadora dos resultados:

| Benchmark | Items inseridos | **HashSet** | **TreeSet** |
|:---------:|
|                 |             |             |
| 5x105           | 744         | 972         |
| 10x105          | 536         | 1365        |
| 15x105          | 979         | 3660        |
| 20x105          | 1730        | 4077        |

Ainda daria pra fazer o HashSet se comportar de forma mais rápida, movendo a criação dele para fora do laço e esvaziando ele no fim de cada iteração.

Em uma máquina com menos disponibilidade de mémoria (a que eu usei para o teste possui 2GB) se um HashSet for usado como da primeira maneira, ele será muito pior que o TreeSet. Por isso é muito importante saber sob quais condições uma [estrutura de dados][7] é melhor do que outra. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][9], por [Email][10] ou via [Twitter][11].**  
Veja como ter um desconto no [Dreamhost][12]: um excelente servidor web.

 [1]: http://en.wikipedia.org/wiki/Hash_table
 [2]: http://en.wikipedia.org/wiki/Perfect_hash_function
 [3]: http://en.wikipedia.org/wiki/Computational_complexity_theory
 [4]: http://en.wikipedia.org/wiki/Red_black_tree
 [5]: http://en.wikipedia.org/wiki/Hash_function
 [6]: http://java.sun.com/j2se/1.5.0/docs/api/java/util/HashSet.html#HashSet()
 [7]: http://en.wikipedia.org/wiki/Data_structure
 [8]: https://twitter.com/share
 [9]: http://feeds.feedburner.com/VidaGeek
 [10]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


