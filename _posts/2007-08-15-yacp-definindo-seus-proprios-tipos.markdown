---
author: Jonas Abreu
title: 'YACP - Definindo seus próprios tipos'
layout: post

---
C possui suporte a definição de novos tipos, o que torna o código muitas vezes mais legível e conciso. É possível criar esses novos tipos com **typedef**, **struct**, **enum** e **union**.

### **Typedef**

Typedef serve para você mudar o nome de um tipo. Parece meio inútil mas na verdade ajuda muito com a semântica do código. Por exemplo, você decide que precisa de um tipo para guardar dinheiro. Float não serve, porque pode dar erros de precisão (faça o teste com R$0.30 . É uma dízima periódica em binário e pode gerar resultados estranhos). Então você percebe que se guardar o dinheiro contando os centavos (1 real = 100 centavos) você não vai ter problemas de precisão, pois você sabe que os postos de gasolina não podem colocar aquele terceiro digito depois da vírgula, pois não existe milésimo de real.

Então você vai lá e declara dinheiro como int. Pronto. Seu sistema funciona e você fica feliz, mas chamar seu dinheiro de int é meio feio e não faz muito sentido semanticamente. Como resolver isso? Você cria um novo tipo chamado dinheiro com o typedef:  
	
	typedef int dinheiro;/*cria o tipo dinheiro*/

	dinheiro d;  
	/*não tem a ver com a definição do tipo.*/  
	/*Coloquei só pra exemplificar*/

Agora você armazena seu dinheiro em um tipo dinheiro. Muito mais legível, certo?

### **Struct**

Struct é uma forma de você agrupar diversos tipos dentro de um único, e acessá-los de forma individual. Na minha opinião é o recurso mais poderoso para definição de novos tipos. É muito bom para juntar informações relevantes e colocá-las em um único lugar de facil manipulação.  
	struct nome_struct {
		tipo1 nome1;
		tipo2 nome2;
		.
		.
		.
		tipoN nomeN;
	}
  
Para acessar qualquer tipo que esteja dentro da struct, use o operador “.”:  


	Minhastruct.nome1;

E você usa como uma variável qualquer. Simples, não? Nem tanto. A sintaxe de declaração de uma variavel do tipo struct é meio chata. Você precisa dizer que aquilo é uma struct:  


	struct nome_struct minhaStruct;

É aqui que entra a verdadeira mágica do typedef. Bem agora que você estava quase acreditando que a melhor utilidade do typedef é mudar o nome de um tipo primitivo.

Se você criar um tipo para representar "struct nome\_struct", fica bem mais fácil de declarar:  


	typedef struct nome_struct novo_nome;
  
Geralmente isso já é feito quando declaramos a struct:  

	typedef struct nome_meio_inutil {
		tipo1 nome1;
		.
		.
		.
		tipoN nomeN;
	} nome_real;

O resto é igual, mas você usa o nome real pra declarar.  

	typedef struct _retangulo {
		double lado;
		double altura;
	} retangulo;

	retangulo r;  
	double area;

	r.lado = 4.0;  
	r.altura = 3.1415;  
	area = r.lado * r.altura;

### **Enum**

Enum cria um tipo que pode apenas receber valores específicados durante a sua criação. Por exemplo:  

	enum {
		janeiro,
		fevereiro,
		marco,
		abril,
		maio,
		junho,
		julho,
		agosto,
		setembro,
		outubro,
		novembro,
		dezembro
	};

Mas como isso funciona? Cada posição recebe um valor (a partir de 0 e incrementando para cada posição) e se você colocar um valor que seja diferente desses o compilador gera um erro (ou talvez um warning). O problema é que esse nosso tipo não tem nome e sempre que você for usar você precisa colocar toda essa linha de código para declarar uma variavel:  

	enum {
		janeiro,
		fevereiro,
		marco,
		abril,
		maio,
		junho,
		julho,
		agosto,
		setembro,
		outubro,
		novembro,
		dezembro
	} meses;


Novamente somos salvos pelo typedef:  

	typedef enum {
		janeiro,
		fevereiro,
		marco,
		abril,
		maio,
		junho,
		julho,
		agosto,
		setembro,
		outubro,
		novembro,
		dezembro
	} mes;


	mes m = 8;/*setembro*/

	m = m + 1;/*outubro*/

	m = novembro;/*10*/

A parte mais legal é que aumenta a legibilidade do código, pois é muito mais elegante você verificar se o mês é janeiro do que verificar se ele é 0.

Também é possível mudar o valor inicial do enum, atribuindo para o primeiro elemento um valor inteiro:  

	typedef enum {
		algo=1800,
		sim,
		nao,
		sou,
		muito
	} criativo;

	criativo c;

	c = algo;  
	c = c + 1;/*sim*/  
	c = muito;/*1804*/

### **Union**

Union é uma forma de você colocar diversos tipos em uma única variável. Um conceito interessante, mas que eu não vejo ser usado com muita frequência (Usei apenas uma vez e poderia ter feito de uma forma que evitasse isso). A sintaxe de declaração é bem semelhante à struct:  

	typedef union nome_meio_inutil {
		int i;
		float f;
		char c;
	}minha_union;

	minha_union m;

Já declarei com o typedef, mas se não tivesse feito isso, teria que escrever union antes da declaração, como acontece com struct.

Para utilizar, é basicamente como o struct. Possui apenas uma diferença (fundamental). Ela guarda apenas um dos valores por vez. Portanto, se você armazenar algo em m.i e depois em m.f, o valor de m.i será sobrescrito.  

	minha_union m;
	m.i = 10;
	m.f = 9.0;/*O valor de m.i foi sobrescrito*/

E cuidado com a leitura dos valores. Se você gravar em m.f e ler com m.i, você receberá um valor que não apresenta sentido, pois o union não faz conversão entre os tipos que você coloca nele.  

	minha_union m;
	m.f = 11.5;
	printf("%d\n", m.i);/*vai imprimir algum valor estranho*/

A única vez que usei essa estrutura foi quando estava fazendo um leitor de arquivos .ini . Convencionei que poderiam existir apenas 3 tipos dentro do ini (string, inteiro e float) e criei um union para representar isso. Mesmo assim ainda precisava de 2 bits pra armazenar qual tipo eu tinha lido, porque o union não mantém essa informação. 


