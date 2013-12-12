---
layout: post
title: Pbcopy e pbpaste
author: Jonas Abreu
---

Acho que a única coisa que senti falta quando migrei para linux foi uma ferramenta
que permitisse a interação com o clipboard a partir do terminal (eu fiquei muito acostumado
a dar `cmd+c` em algo, jogar ele no terminal para transformar em alguma outra coisa).

Não achei um pacote que faça apenas isso, mas resolvi com [dois alias bem simples][1]:

    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'

É realmente uma mão na roda poder fazer `pbpaste | unix_magic | pbcopy` :D

Ah, você precisa do pacote [xsel][2] instalado.

[1]: http://jetpackweb.com/blog/2009/09/23/pbcopy-in-ubuntu-command-line-clipboard/
[2]: https://launchpad.net/ubuntu/+source/xsel
