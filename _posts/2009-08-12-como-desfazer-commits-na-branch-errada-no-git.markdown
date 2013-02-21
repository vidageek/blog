---
author: convidados
title: Como desfazer commits na branch errada no Git
layout: post
game: git
---
**O post de hoje é do nosso amigo Lucas Cavalcanti, desenvolvedor da [Caelum][1].**

Usando git, sempre é bom trabalhar em branches, nunca commitar diretamente na branch master.

Acontece que às vezes você simplesmente esquece de criar uma branch antes de começar a trabalhar  
e commita várias coisas no master. O problema disso é que se você der um git pull origin master  
e acontecer um conflito de merge, você vai ter que resolver todos os conflitos de uma vez só,  
e ganhar um commit “Merge branch blablablah” que some com algumas informações de commit…

O que fazer então?

Um jeito legal de prevenir isso é digitando os comandos:

	(master) $ git branch temp
	# cria uma branch pra guardar o estado atual
	  
	(master) $ git reset --hard HEAD@{1}
	# volta o estado do branch master para a última
	# ação perigosa que você fez, geralmente
	# o último push que vc fez no servidor
	
	(master) $ git pull origin master
	# agora sim fazendo um pull seguro
	
	(master) $ git checkout temp
	(temp) $ git rebase master
	# e corrige os eventuais conflitos do jeito certo
	
	(temp) $ git checkout master
	(master) $ git merge temp
	(master) $ git push origin master
	(master) $ git branch -d temp

Assim você corrige a cagada de trabalhar no master sem querer e continua a trabalhar com o git  
do jeito certo. 


 [1]: http://www.caelum.com.br





