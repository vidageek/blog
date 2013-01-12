---
author: Jonas Abreu
title: Svn externals e Git Svn
layout: post
game: git
---
No meu post anterior, sobre [git svn shallow cloning][1], acabei deixando de usar git naquele projeto por causa de um pequeno problema.

Depois de efetuado o clone, notei que algumas pastas não vieram. Mais precisamente nenhuma pasta que na verdade era um **svn external**, ou seja, que referenciava um outro repositório svn.

Aparentemente o **git svn** ainda não suporta svn externals. Então em projetos que dependem de svn externals (como era o caso), ainda não dá para usar git. 














 [1]: http://vidageek.net/2012/05/02/git-svn-shallow-clone/





