---
author: Jonas Abreu
title: Infinitest
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Lembro que em pelo menos [ um post anterior][1] eu comentei sobre o [Infinitest][2].

O Infinitest é uma ferramenta que roda seus testes unitários a cada vez que você salva algum arquivo. Mas ele não roda todos. Roda apenas os que são afetados pela modificação que você fez.

Isso é muito legal porque reduz muito o tempo de feedback. Imaginem, a cada vez que você salva o arquivo, teria que rodar todos os testes unitários (em geral é meio difícil saber se uma modificação afetou um teste ou não), o que pode demorar vários segundos em um projeto saudável. O infinitest te dá feedback quase instantâneo.

Outra coisa muito legal é que ele coloca um marcador de erro (sabe a marcação de erro de compilação do eclipse? pois é.) no teste que falhou ou onde foi lançada a exceção que impediu a execução do teste. Nem preciso dizer o quanto isso facilita para encontrar o problema.

A primeira versão (3.X) que usei dele, foi durante o desenvolvimento do [Mirror][3]. Na época era meio complicado colocar ele para rodar e tinha uns bugs meio estranhos (testes em loop infinito ficavam rodando eternamente). A versão atual (4.X) possui plugins para Eclipse e IntelliJ. 

Vale muito a pena, em especial se você quer aprender TDD. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][5], por [Email][6] ou via [Twitter][7].**  
Veja como ter um desconto no [Dreamhost][8]: um excelente servidor web.

 [1]: http://vidageek.net/2010/01/17/um-caso-de-odio-e-talvez-um-pouco-de-amor-tambem-conhecido-como-automatizadores-de-build/
 [2]: http://infinitest.org
 [3]: http://projetos.vidageek.net/mirror-pt/mirror
 [4]: https://twitter.com/share




