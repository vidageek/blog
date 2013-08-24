---
layout: post
title: Cut
author: Jonas Abreu
permalink: /tutorial/bash/cut
tutorial: bash-log
---

O [cut][1] é uma das ferramentas mais simples e úteis da shell. Basicamente ele quebra a string passada em qualquer
ocorrência de um determinado caractere e deixa que você selecione algum dos pedaços.

### Cut

O uso mais comum do cut é algo como:

    echo "duas palavras" | cut -d " " -f 2

Nota rápida: 

* `echo` simplesmente imprime a string passada na linha de comando.
* `|` é um dos pontos mágicos da shell. Ele faz com que o próximo comando receba como entrada a saída do programa anterior. No caso, ele faz com que o `cut` receba a saída do `echo`, ou seja `"duas palavras"`.

O comando acima vai imprimir `palavras`, porque quebramos a string em `" "` (espaço) e pedimos que ele selecionasse 
o segundo campo.

### Exercícios

Descubra o que os seguintes comando imprimem:

    echo "paralelepipedo" | cut -d "a" -f 3
    echo "paralelepipedo" | cut -d "a" -f 1
    echo "paralelepipedo" | cut -d "l" -f 2
    echo "paralelepipedo" | cut -d "l" -f 3
    echo "paralelepipedo" | cut -d "p" -f 2
    echo "paralelepipedo" | cut -d "p" -f 2

Coloque o `cut` para que imprima todas as parte (uma por vez) do seguinte ip:

    echo "192.168.0.1" | coloque o cut aqui

Extraia a lista de ips do arquivo de log `games.log` usando cut. Você vai precisar de um outro comando que se chama `cat` e serve para ler arquivos. `cat arquivo` imprime o conteúdo do arquivo no terminal.

[1]: https://en.wikipedia.org/wiki/Cut_(Unix)
