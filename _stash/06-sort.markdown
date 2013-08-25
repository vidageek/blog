---
layout: post
title: Sort
author: Jonas Abreu
permalink: /bash/sort
tutorial: bash-log
---

### Comandos até o momento
    $ curl http://www.vidageek.net/public/bash/games.log > games.log
    $ cat games.log | cut -d " " -f 1


### Sort

Nosso objetivo, agora que conseguimos a lista de ips, é encontrar os top 20 que mais acessaram.

O primeiro passo nessa direção, embora seja meio estranho (fará sentido no próximo post) é ordenar a lista de ips.

Para ordenar a lista, usamos o comando `sort`.

    $ A="verde
    vermelho
    cinza
    preto
    rosa
    azul
    amarelo"
    $ echo "$A" | sort

Para ordenar de forma decrescente, é só acrescentar a flag `-r`

    $ echo "$A" | sort -r

### Exercício

Ordene a lista de ips em ordem crescente.
