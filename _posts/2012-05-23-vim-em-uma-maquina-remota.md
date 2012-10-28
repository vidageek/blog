---
author: Jonas Abreu
title: Vim em uma máquina remota

layout: post
category:
  - Dicas
  - Programacao
tags: [ ]
post_format: [ ]
---
Eu gosto muito de usar [Vim][1] e uma coisa que preciso com frequência é modificar um arquivo que está em uma máquina remota.

A forma comum de fazer isso é fazer ssh para a máquina e dentro dela eu subo o editor.

Mas com Vim é possível editar um arquivo remoto direto da sua máquina (ou pelo menos ele faz parecer isso).

O comando é bem simples:

    vim scp://USER@HOST//path/para/arquivo















 [1]: http://www.vim.org/





