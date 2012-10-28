---
author: fabs
title: MacOSX Terminal e os Alias do Finder

layout: post
category:
  - Dicas
  - Mac
tags:
  - alias
  - bash
  - finder
  - osascript
  - symlink
post_format: [ ]
---
![][1]Essa vai para os usuários de Mac, outro dia faço um post para os usuários de Linux para contra balancear ^.^.

Faz algum tempo que tive a infelicidade de descobrir que o alias que você faz no Finder **não **é um [link simbólico][2]. O Finder até reconhece os symlinks, mas ele não os atualiza dinamicamente como faz com os seus Alias. Foi então, que faz alguns dias atrás, que por causa do GTD, eu precisava organizar minhas pastas de uma determinada maneira, mas eu não queria perder a estrutura antiga de diretórios, nem mesmo bagunçar as coisas no Mac…

Foi ai que eu achei um post muito legal no [blog do theapotek][3]. Ele explica como alterar o seu .bashrc para que o comando cd execute o seguinte osascript.

    tell application "Finder"
     set theItem to (POSIX file "${1}") as <strong style="color: black; background-color: #99ff99;">alias</strong>
     if the kind of theItem is "<strong style="color: black; background-color: #99ff99;">alias</strong>" then
      get the posix path of ((original item of theItem) as text)
     end if
    end tell
    

Bonita essa sintaxe não? Acho que eu vou falar sobre ela em um futuro próximo…

Nota, no momento do Post eu não estava conseguindo acessar o theapotek, a [página em cache no google está aqui.][4] 














 [1]: http://farm1.static.flickr.com/116/289043666_3d6ea9f8a6_m.jpg
 [2]: http://en.wikipedia.org/wiki/Symbolic_link
 [3]: http://theapotek.com/2006/12/01/making-the-mac-os-x-bash-shell-alias-and-symlink-agnostic/
 [4]: http://74.125.113.104/search?q=cache:ew5q3CKCjs0J:theapotek.com/2006/12/01/making-the-mac-os-x-bash-shell-alias-and-symlink-agnostic/+bash+shell+alias+agnostic&hl=pt-BR&ct=clnk&cd=1&gl=br&client=firefox-a





