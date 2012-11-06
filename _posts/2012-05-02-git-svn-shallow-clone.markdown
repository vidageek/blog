---
author: Jonas Abreu
title: Git Svn shallow clone

layout: post
category:
  - Dicas
  - Programacao
tags: [ ]

---
Em um projeto que fui trabalhar uma vez e que usava svn para controle de versão, tentei usar git svn para não precisar mudar meu fluxo de trabalho e ter todas as vantagens do git.

O problema é que quando mandei clonar o repositório svn, que tinha cerca de 40000 commits, o processo estava demorando demais (desisti depois dos primeiros 5000 commits demorarem quase uma hora para serem importados).

Pra resolver isso, depois de pesquisar um pouco, descobri que é possível fazer o clone de um intervalo de revisões svn.

    git svn clone -r39000:HEAD URL NOME

O comando acima simplesmente clona o repositório (URL) da revisão 39000 até a atual (HEAD) na pasta especificada (NOME).

Você fica sem parte do histórico, mas em geral acabo usando pouco o histórico, então abro mão fácil dele para poder usar git. 



















