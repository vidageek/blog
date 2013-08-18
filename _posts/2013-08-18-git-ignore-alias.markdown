---
author: Jonas Abreu
title: Git ignore alias
layout: post
game: git
---

O [Diogo Baeder][1] perguntou [porque não existe um comando `git ignore arquivo`][2]. Realmente acho que faz sentido.

Como não consigo colocar novos comandos no git, criei um alias que faz exatamente isso:

    [alias]
    ignore = !( [ ! -z `grep "^$GIT_PREFIX$1$" ".gitignore"` ] ) || echo "$GIT_PREFIX$1" >> .gitignore && echo > /dev/null

O `echo > /dev/null` é necessário porque o git coloca os parâmetros passados entre o fim do seu comando e o 
redirecionamento.

Você precisa apenas copiar o alias para o seu gitconfig (fica em `~/.gitconfig`)

#### Update
Modifiquei o script para que apenas coloque no `.gitignore` caso não esteja lá.

[1]: https://twitter.com/diogobaeder
[2]: https://twitter.com/diogobaeder/status/368900310103650304
