---
layout: post
title: Grep
author: Jonas Abreu
permalink: /bash/grep
tutorial: bash-log
---

### Comandos até o momento
    $ curl http://www.vidageek.net/public/bash/games.log > games.log
    $ cat games.log | cut -d " " -f 1
    $ cat games.log | cut -d " " -f 1 | sort
    $ cat games.log | cut -d " " -f 1 | sort | uniq -c | sort -r
    $ cat games.log | cut -d " " -f 1 | sort | uniq -c | sort -r | head -n 20

### Grep

Agora que já sabemos quais são os principais ips que acessam, vamos descobrir quais urls resultam em 404 e 
quantas vezes esse erro aconteceu.

Para isso vamos usar o `grep`, que é uma ferramenta fantástica cuja função principal é encontrar strings.

Por exemplo, se quisermos saber todas as urls que acessadas via `POST`:

    $ cat games.log | grep POST

E se quisermos as requisições `POST` para `/play/regex/task/14`:

    $ cat games.log | grep POST | grep "/play/regex/task/14"

E se quisermos as requisições que não foram feitas pelo ip `125.103.133.218`? Basta passar a flag `-v` para o `grep`. 
Ele só vai imprimir as não tiverem a string que você procura.

    $ cat games.log | grep -v 125.103.133.218

O `grep`, assim como o `uniq`, sabe contar.

    $ cat games.log | grep -c 125.103.133.218

### Exercício

Encontre quais urls resultaram em `404` e quantas vezes isso aconteceu.
