---
author: Luiz
title: Em busca da expressividade

layout: post
category:
  - Discussões
  - Expressividade
  - Programacao
tags:
  - clean code
  - expressividade
  - literatura
post_format: [ ]
---
Cada vez mais, nós, desenvolvedores ([ou pelo menos aqui do VidaGeek][1]), percebemos que é necessário escrever código expressivo para facilitar sua manutenção e seu uso posteriormente. Mas, para sermos expressivos, é necessário entender direito o que significa expressividade, antes de mais nada. O que vem a seguir é uma tentativa de um programador, e não um escritor ou especialista na área, de analisar esse conceito. Correções e contra-argumentos são mais do que bem-vindos.

A literatura é uma arte em que é necessário desenvolver a capacidade de ser expressivo com palavras para criar boas obras. Um escritor precisa saber escolher bem as palavras e construções de frases, além da linha de raciocínio, para conseguir transmitir emoções, ideias e ambientações.

A expressividade também é necessária fora da arte. A matemática, por exemplo, desenvolveu toda uma linguagem para conseguir expressar conceitos abstratos de forma conveniente e clara. Por exemplo: imagine o quão **mais** penoso seria entender cálculo se não houvesse uma expressão que representasse a soma de muitos termos!

Em suma, quando escrevemos algo, devemos escrever sempre pensando em sermos entendidos posteriormente, seja na literatura, na matemática ou na programação. E, para isso, temos à nossa disposição uma língua ou linguagem e suas construções. Cabe a nós, que escrevemos, decidir como utilizá-las.

Para decidir como e quando usar as ferramentas que temos em mãos, precisamos pensar em quem vai ler o que escrevemos. Quais suas experiências? Qual a familiaridade do leitor com o assunto que será tratado? É claro que podemos decidir nosso público alvo. Podemos decidir, por exemplo, que o leitor deve conhecer previamente um certo teorema ou algoritmo, ou ainda deve conhecer os termos de uma determinada regra de negócio.

A partir do momento que pressupomos um certo conhecimento prévio, podemos ser mais objetivos, mais concisos, mas podemos deixar de atingir um público. Por outro lado, se explicarmos tudo, nosso texto pode se tornar cansativo de ler e, assim, deixar de atingir um outro público.

Vamos a um exemplo: veja as seguintes declarações da função [seno][2] abaixo.

    double f(double r);
    double seno(double radianos);
    double razaoEntreCatetoOpostoETangenteComAngulo(double anguloEmRadianos);
    

Perceba como cada uma pressupõe um certo conhecimento prévio do leitor. A primeira só vai fazer sentido se você souber exatamente em que contexto essa função é chamada, mas é bem enxuta. A segunda faz sentido para quem já teve um curso de geometria; é enxuta e atinge boa parcela dos possíveis leitores. Já a terceira pressupõe um conhecimento muito básico de geometria, por isso explica bem o que faz (tão bem que nem cabe numa linha só aqui). Qual delas é mais expressiva? A primeira, a segunda ou a terceira? Deixe sua opinião para continuarmos essa discussão! 

*   No related posts












 [1]: http://vidageek.net/2011/05/16/desafio-de-expressividade-i/
 [2]: http://pt.wikipedia.org/wiki/Seno





