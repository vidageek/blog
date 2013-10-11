---
layout: post
title: Man
author: Jonas Abreu
permalink: /bash/man
tutorial: bash-log
---

### Comandos até o momento
    $ curl http://www.vidageek.net/public/bash/games.log > games.log
    $ cat games.log | cut -d " " -f 1
    $ cat games.log | cut -d " " -f 1 | sort
    $ cat games.log | cut -d " " -f 1 | sort | uniq -c | sort -r
    $ cat games.log | cut -d " " -f 1 | sort | uniq -c | sort -r | head -n 20
    $ cat games.log | grep 404 | cut -d " " -f 9 | sort | uniq -c | sort -r

### Man

Esse pequeno conjunto de ferramentas ([curl][1], [cut][2], [sort][3], [uniq][4], [head][5], [grep][6]) que você viu 
nos últimos posts é o suficiente para fazer muitas análises rápidas de dados razoalvelmente estruturados (como logs).

Mas você viu apenas um pequeno pedaço do que elas são capazes. Uma das coisas mais lindas da shell é que você
não precisa sair dela para aprender mais sobre as ferramentas que vem com ela. Existem basicamente duas formas
de você ver quais opções os comandos aceitam:

    $ man comando

O `man` abre o manual sobre o comando. Todos os principais comandos da shell tem um manual extremamente completo.

    $ comando --help

ou

    $ comando -h

Essas duas últimas costumam imprimir no console um guia rápido de quais parâmetros são aceitos pelo comando. 
Extramente útil quando você não lembra qual é a flag, mas sabe o que quer e qual ferramenta usar.

[1]: /bash/curl
[2]: /bash/cut
[3]: /bash/sort
[4]: /bash/uniq
[5]: /bash/head
[6]: /bash/grep
