---
author: Jonas Abreu
title: 'FISL 8.0 - Infraestrutura de Sistemas Distribuídos (Google)'
excerpt:
layout: post
category:
  - Eventos
  - Fisl
  - Google
tags:
  - Eventos
  - Fisl
  - Google
post_format: [ ]
---
A missão autoproclamada da Google todos já conhecem. “Organizar e tornar acessível toda a informação do mundo”. Mas como isso funciona de verdade? Nós também não sabemos, mas essa palestra ilustrou algumas das idéias por trás desse trabalho hercúleo. O GFS, MapReduce e BigTable. 

O GFS, ou **G**oogle **F**ile **S**ystem – Sistema de Arquivos da Google – é um sistema de arquivos de altíssima escalabilidade e com grande tolerância a falhas. mas porquê eles perderam tempo desenvolvendo um novo sistema de arquivos? Bom, as aplicações que eles rodam ultrapassam todos os limites normais de trabalho com dados. Normalmente você não tem que ordenar e indexar centenas de Terabytes de dados. Mas eles têm. Além disso, eles possuem milhões de consultas diárias a esses dados, precisando de uma grande banda para de leitura e gravação, além de grande confiabilidade. Mas como ele funciona? Basicamente, ele possui um servidor principal, que é para quem você envia a consulta. Esse servidor não possui os dados, mas ele possui informações sobre como esses dados estão espalhados em diversas outras máquinas (muitas vezes milhares de máquinas comuns como os PCs que temos em casa). A partir daí, este servidor lhe diz em que máquina você deve conectar e você recebe os dados. Ele também é inteligente o bastante para saber quando uma máquina “morre” (quebra) e uma nova deve ser “despertada” (ativada) para suprir a perda. Ele também coordena toda a inserção (ou remoção) de uma máquina e o sistema de replicamento de “chunks” (pedaços da informação) entre diversas máquinas (para evitar problemas com a “morte” de uma máquina). 

MapReduce é a união de duas técnicas usadas em diversos sistemas da Google (como Busca, Ads, Froggle, Maps, Orkut, etc). A Map (que mapeia os dados de alguma forma) e a Reduce (que condensa os dados de alguma forma). Um exemplo é o indexador de páginas da Google, que pega cada página html e primeiramente aplica a Map, gerando uma espécie de frequência relativa das palavras no texto. Logo após, é aplicado o Reduce, que condensará essas frequências gerando o índice de páginas. Essa é apenas uma aplicação (das 1845 que usam o MapReduce). Além disso, MapReduce também é uma biblioteca que permite que o programador apenas construa as suas funções de Map e Reduce e não se preocupe em como que isso deve ser feito em um sistema distribuído como o GFS. Devido à grande utilização, em março de 2005, a Google já tinha usado 1 milênio de horas-máquina com operações de MapReduce.

BigTable, como o próprio nome já diz, é uma tabela grande. Mas como estamos falando da Google, é uma tabela gigantesca. Este é o banco de dados que a Google usa. Mas não pense que estamos falando de um banco de dados como o Oracle ou MySQL. A BigTable é bem mais simples e bem mais complicada. Ela é mais simples porque não precisa manter relacionamentos entre os dados, o que consome a maior parte do processamento em um banco de dados. Mas também é mais complicada pois foi desenvolvida para lidar com Terabytes de dados espalhados em milhares de máquinas. Ela é indexada atravéz de uma string qualquer (pode ser número, url ou qualquer outra coisa) e tem acesso direto à qualquer uma de suas posições (acesso assíncrono). Mas porque eles não usam um banco de dados já existente? Em parte por causa do custo, mas o maior motivo é que as aplicações deles são time-critical (tempo é um fator crítico). Ninguém quer esperar três segundos pela resposta de uma busca no Google. Se tivessem utilizado um banco de dados convensional, não seria possível fazer otimizações de baixo nível. Sem contar que “eles acham muito divertido implementar as coisas a partir do zero”. Outro suporte que a BigTable possui, é o timestamp, que permite que seus registros sejam associados de acordo com uma data e seja possível recuperar dados de datas antigas.

**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek



