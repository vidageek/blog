---
author: Jonas Abreu
title: git push -f
layout: post
game: git
---

Hoje aconteceu algo interessante durante os commits no [Games][1].

Um dos commiters reverteu 3 commits que foram pra origin/master na hora errada usando `git push -f`.

Aparentemente não existe problema algum nisso. Os commits não estavam lá, então o código estava correto.

Mais ou menos. O código realmente não estava lá, mas eu tinha os commits que foram apagados porque tinha
rodado um `git pull` antes do `git push -f`. Isso era um problema. Como apenas eu tinha feito isso,
simplesmente removi os commits da minha árvore e tudo estava certo. Mas imaginem que alguém faça isso
em um projeto muito mais ativo. Nesse momento ou todos removem os commits apagados ou as portas do
inferno se abrem de uma forma que vai ser muito difícil de fechar.

O `git push -f` é uma operação muito destrutiva, uma vez que você simplesmente reescreve a árvore de commits
da origem para que ela fique igual à sua. Por essas razões ele só deve ser usado em situações de emergência 
que você não consiga contornar de outra forma.

No caso que comentei, o mais simples era rodar um [git revert HASH\_DO\_COMMIT][2] nos commits, que resolveria 
o problema porque o `git revert` gera um novo commit revertendo as modificações introduzidas no commit referenciado. 

[1]: http://games.vidageek.net/
[2]: http://christoph.ruegg.name/blog/2010/5/5/git-howto-revert-a-commit-already-pushed-to-a-remote-reposit.html
