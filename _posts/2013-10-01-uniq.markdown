---
layout: post
title: Uniq
author: Jonas Abreu
permalink: /bash/uniq
tutorial: bash-log
---

### Comandos até o momento
    $ curl http://www.vidageek.net/public/bash/games.log > games.log
    $ cat games.log | cut -d " " -f 1
    $ cat games.log | cut -d " " -f 1 | sort


### Uniq

O `uniq` é um comando que, à primeira vista, não parece muito útil. Ele simplesmente recebe uma lista ordenada (precisa 
estar ordenada, senão ele não produz a saída correta) e deixa apenas um elemento de cada.

    $ A="1
    2
    2
    3
    3
    3"
    $ echo "$A" | uniq

Ele se torna muito útil quando usamos a flag `-c`, que coloca o número de ocorrências de cada elemento:

    $ echo "$A" | uniq -c

### Exercício

Conte o número de ocorrências de cada ip e ordene do maior número para o menor.
