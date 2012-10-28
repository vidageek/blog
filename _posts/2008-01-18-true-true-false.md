---
author: Jonas Abreu
title: 'TRUE & TRUE == FALSE ?'
excerpt:
layout: post
category:
  - C
  - Dicas
  - Programacao
tags:
  - C
  - Dicas
  - Programacao
post_format: [ ]
---
Quando estamos programando, é muito comum precisarmos de um tipo booleano. Infelizmente o padrão Ansi C (isoc89) não possui um tipo primitivo para representar verdadeiro ou falso.

Qual a solução? Dentre várias, uma das mais perigosas e mais comum é essa:

    
    typedef int bool;
    
    #define TRUE 1
    #define FALSE 0
    

Primeiro, como ela funciona:

Em C, como não existe boolean, qualquer inteiro diferente de 0 é considerado como verdadeiro e 0 é considerado falso. Portanto, nada mais lógico que pegar 0 e definir como falso e um outro número qualquer e definir como verdadeiro.

Qual o problema? Em 95% das aplicações que você normalmente faz, isso é uma solução perfeita, porque você **sempre** usa os operadores booleanos que encerram em curto-circuito (&& e ||).

A coisa muda totalmente de figura quando você usa os operadores bitwise (&, | e ^) para gerar condições booleanas. Isso é comum quando estamos usando funções que possuem efeitos colaterais (isso não é considerado uma prática muito boa, mas tem muita gente que usa isso ainda).

Imagine que você está usando uma função sua que produz efeitos colaterais e uma de uma biblioteca qualquer que também têm efeitos colaterais. As duas devolvem um inteiro diferente de 0 se bem sucedidas.

Como você é uma pessoa disciplinada, para garantir a consistência do seu sistema, quando você quer valores booleanos, você só atribui TRUE ou FALSE.

Se o código for esse, sem problemas:

    
    if (sua_funcao() && funcao_da_lib())
    	faz_algo();
    

Mas isso é ruim, pois você precisa que as duas funções sejam executadas (mesmo se a sua falhar). O que você faz?

    
    if (sua_funcao() & funcao_da_lib())
    	faz_algo();
    

Arranca um & de lá e passa 20 horas debuggando. Porquê? Simples. Por algum motivo estranho, o cara que escreveu a biblioteca que você está usando resolveu devolver 2 como verdadeiro. Olha que legal que fica se você substitui os valores devolvidos (em caso de sucesso) no lugar das funções:

    
    if (1 & 2)
      faz_algo();
    

Como dois não é impar, a função faz_algo() não será executada (causando uma grande dor de cabeça em você).

Mesmo você sendo o programador mais disciplinado da face da terra, não dá pra evitar problemas assim. Não dá pra ter controle sobre o código dos outros.

Para evitar esse tipo de problemas, eu costumo definir minhas constantes assim:

    
    #include <limits.h>
    
    typedef unsigned int bool;
    
    #define TRUE UINT_MAX
    #define FALSE 0
    

Isso protege contra todos os problemas? Não. Mas evita alguns que podem dar muita dor de cabeça. Isso porque tendo todos os bits setados como 1, quando usar o operador bitwise & ele só vai dar false se o outro valor não possuir nenhum bit setado para 1 (que é exatamente o que queremos).

Mas ainda bem que no padrão isoc99 existe o tipo bool. Vai evitar muitos problemas. Mas até ele ser realmente adotado ainda vai algum tempo. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share




