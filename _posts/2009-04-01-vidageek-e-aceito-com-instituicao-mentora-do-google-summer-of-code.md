---
author: fabs
title: >
  Vidageek é aceito com instituição
  mentora do Google Summer of Code
excerpt:
layout: post
category:
  - C
  - OpenSource
  - Ruby
tags:
  - Google
  - grafos
  - gsoc
  - method_finder
post_format: [ ]
---
![][1]Muito obrigado pessoal! O Vidageek vai participar do Google Summer of Code. Estamos muito felizes, o GSoC é um evento importante e não teríamos conseguido sem o apoio de vocês. Mas mais do que isso, não só fomos o primeiro blog brasileiro a conseguir esse feito, como todos os nosso escritores serão mentores, e teremos uma boa quantidade de projetos.

Deixando de lado os agradecimentos, vamos aos assuntos que interessam. Estamos oferecendo várias idéias nesse post, mas gostaríamos de encorajar os estudantes a submeter novas idéias para adicionar a comunidade de software livre.

**Method Finder **([Postado em 09/03/2009][2])

Suporte para encontrar métodos em Ruby. Você pode perguntar a um objeto, quais métodos que chamados passando parâmetros e blocos, devolvem um resultado específico, por exemplo: Perguntando ao objeto 2, quais métodos são chamados passando parâmetro 2 que retornam o valor quatro, ele responderia ‘+’, ‘*’ e ‘^’.

Idéias: Implementar um bundle para o TextMate ou Descobrir previamente se a execução de um método termina (esse é um problema interessante, já que temos em ruby o método cycle, que é um laço infinito).

**Tri-Coloração em tempo linear  
**

Paulo Feofiloff um professor doutor da universidade de São Paulo publicou já faz algum tempo a solução para [bi colorir um gráfo][3]. Isso é a mesma coisa que encontrar uma bi-partição do grafo. Recentemente esforços vem sendo feitos para implementar a tri-coloração em tempo linear. Resolver esse problema poderia facilitar o desempenho de uma grande quantidade de projetos livres, principalmente quando se fala em interface gráficas 3D (já que o maior problema nesses casos está na coloração em 3 dimensões.

Idéias: Oferecer um algoritmo para tri-colorir um grafo em C++ com uma interface gráfica em Qt (pode usar outras bibliotecas do KDE). É desejado que o algoritmo seja linear no número de vértices do grafo (do contrário não servirá para implementar interfaces 3D).

É isso ai, qualquer outra idéia pode ser postada nos comentários, nós temos interesse em qualquer projeto que vocês possam oferecer. Não se acanhem, o pessoal do vidageek vai olhar atentamente para todas as submissões, não se esqueça da data limite (3/04). Boa Sorte, estamos ansiosos em trabalhar com vocês! 
**Posts Relacionados:** 
*   No related posts










Veja como ter um desconto no [Dreamhost][8]: um excelente servidor web.

 [1]: http://upload.wikimedia.org/wikipedia/en/1/1f/GSOC_198x128.png "GSoC"
 [2]: http://vidageek.net/2009/03/09/ruby-method-finder/
 [3]: http://www.ime.usp.br/~pf/algoritmos_em_grafos/aulas/v-coloring.html





