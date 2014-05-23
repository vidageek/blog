---
layout: post
title: Como configurar teclas de atalho no fluxbox
author: Jonas Abreu
---

Uma coisa que acho sensacional no fluxbox é [configurar teclas de atalho][1]. Simplesmente
é um arquivo que você coloca a combinaçãod e teclas e o que tem que acontecer. Normalmente
esse arquivo é o `~/.fluxbox/keys`. A parte personalizada do meu é mais ou menos assim:

    #Custom

    #Gnome Do
    Mod4 space :exec /usr/bin/gnome-do
    
    # Keyboard Layout Change
    Mod4 1 :exec /usr/bin/setxkbmap -layout us -variant altgr-intl
    Mod4 2 :exec /usr/bin/setxkbmap -layout us -variant alt-intl
    Mod4 3 :exec /usr/bin/setxkbmap -model abnt2 -layout br -variant ,abnt2
    
    # Volume Control
    None XF86AudioLowerVolume       :Exec amixer sset Master,0 5%-
    None XF86AudioRaiseVolume       :Exec amixer sset Master,0 5%+
    None XF86AudioMute              :Exec amixer sset Master,0 toggle

Super fácil de entender. `Mod4` é tecla com o logo do windows no meu teclado. Se eu aperto
`Mod4` seguido de `espaço`, ele abre o [Gnome-Do][2] (sim. Gnome-Do rola muito bem no fluxbox).

Se eu apertar `Mod4` seguido de 1, 2 ou 3, ele muda o teclado para alguma das variações que eu
uso.

Por fim, se eu apertar as teclas de controle de áudio do meu teclado, ele roda o [amixer][3]
para aumentar, diminuir ou mutar o som.

Unica coisa que você precisa lembrar quando for configurar atalhos, é que esse arquivo só é lido
na inicialização do fluxbox, então você precisa se re-logar para ver as modificações.

[1]: http://fluxbox-wiki.org/index.php/Keyboard_shortcuts
[2]: https://launchpad.net/do
[3]: http://linux.die.net/man/1/amixer
