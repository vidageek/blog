---
layout: post
title: Como escolher o layout de teclado no Fluxbox
author: Jonas Abreu
---

É bem simples. No [arquivo de inicialização do Fluxbox][1], você simplesmente usa o comando
`setxkbmap` para setar o layout de teclado.

    setxkbmap -layout layout -variant variant

Existem diversos `layout` e `variant` que você pode escolher e não encontrei uma lista 
que tenha vários deles. Eu uso três combinações diferentes depedendo do que faço:

    setxkbmap -layout us -variant altgr-intl

Esse é o modo padrão do meu teclado. É uma variação do us international, que uso para 
programar. O legal dessa variação é que se eu precisar de alguma letra com acento, 
consigo colocar usando o `altgr`.

    setxkbmap -layout us -variant alt-intl

Essa combinação eu uso para escrever em potuguês (como esse post). Eu não gosto do padrão
abnt, que é o dos teclados brasileiros. Basicamente esse é o teclado us international com
deadkeys (sabe você apertar a tecla com o acento e ele só aparecer quando você apertar
a letra que você quer acentuar? Pois é. Isso se chama deadkeys).

    setxkbmap -model abnt2 -layout br -variant ,abnt2

Por fim, tem o abnt2 para quando alguém for usar o computador no meu lugar (minha namorada,
alguém pareando, etc). É a combinação que reflete o que está escrito nos teclados brasileiros
e tem deadkeys.

[1]:
