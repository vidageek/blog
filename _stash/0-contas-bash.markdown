---
layout: post
title: Fazendo contas em Bash
author: Jonas Abreu
---

Eu não sei quanto tempo levei pra aprender a fazer contas em bash. Pra que vocês não sofram tanto quanto eu, lembrem 
dessas duas formas:

    A=$[( 1 + 1)]
    
e 
    
    let "A=1+1"

Eu tive problemas com a primeira forma não funcionando em uma máquina, então sempre uso a segunda.

Você pode usar variáveis na sua conta em ambas formas

    A=$[( $RANDOM % 10 )]
    let "A=$RANDOM % 10"

Ah, e esqueça qualquer tipo de aviso caso você tenha feito algo estranho

    $ let "C=abc%10"
    $ echo $C
    $ 0
