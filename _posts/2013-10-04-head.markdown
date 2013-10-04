---
layout: post
title: Head
author: Jonas Abreu
permalink: /bash/head
tutorial: bash-log
---

### Comandos até o momento
    $ curl http://www.vidageek.net/public/bash/games.log > games.log
    $ cat games.log | cut -d " " -f 1
    $ cat games.log | cut -d " " -f 1 | sort
    $ cat games.log | cut -d " " -f 1 | sort | uniq -c | sort -r

### Head

O `head` é um comando bem simples. Ele simplesmente imprime um determinado número de linhas que ele receber:

    cat games.log | head

vai imprimir as primeiras 10 linhas do arquivo games.log

Você também pode usá-lo passando diretamente o arquivo:

    head games.log

Se você quiser mudar o número de linhas que ele imprime, basta passar `-n NÚMERO`:

    cat games.log | head -n 100

### Exercício

Imprima apenas os 20 ips que mais acessaram o site de acordo com o log.
