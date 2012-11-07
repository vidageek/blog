---
author: convidados
title: >
  Como desfazer commits na branch errada
  no Git

layout: post
category:
  - Dicas
  - Programacao
tags:
  - branch
  - commit
  - conflito
  - git

---
*O post de hoje é do nosso amigo Lucas Cavalcanti, desenvolvedor da [Caelum][1].*

Usando git, sempre é bom trabalhar em branches, nunca commitar diretamente na branch master.

Acontece que às vezes você simplesmente esquece de criar uma branch antes de começar a trabalhar  
e commita várias coisas no master. O problema disso é que se você der um git pull origin master  
e acontecer um conflito de merge, você vai ter que resolver todos os conflitos de uma vez só,  
e ganhar um commit “Merge branch blablablah” que some com algumas informações de commit…

O que fazer então?

Um jeito legal de prevenir isso é digitando os comandos:

`<br />
(master) $ git branch temp<br />
# cria uma branch pra guardar o estado atual<br />
`  
`<br />
(master) $ git reset --hard HEAD@{1}<br />
# volta o estado do branch master para a última<br />
# ação perigosa que você fez, geralmente<br />
# o último push que vc fez no servidor<br />
`  
`<br />
(master) $ git pull origin master<br />
# agora sim fazendo um pull seguro<br />
`  
`<br />
(master) $ git checkout temp<br />
(temp) $ git rebase master<br />
# e corrige os eventuais conflitos do jeito certo<br />
`  
`<br />
(temp) $ git checkout master<br />
(master) $ git merge temp<br />
(master) $ git push origin master<br />
(master) $ git branch -d temp<br />
`

Assim você corrige a cagada de trabalhar no master sem querer e continua a trabalhar com o git  
do jeito certo. 














 [1]: http://www.caelum.com.br




