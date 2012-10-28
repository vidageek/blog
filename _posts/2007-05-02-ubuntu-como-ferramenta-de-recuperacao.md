---
author: convidados
title: Ubuntu como Ferramenta de Recuperação
excerpt:
layout: post
category:
  - Dicas
  - Linux
tags:
  - Dicas
  - Linux
post_format: [ ]
---
Um problema um pouco recorrente no Linux é que, quando uma atualização é feita, em geral, algo para de funcionar. Isso aconteceu comigo hoje, quando fiz um update do meu Gentoo (aquele do [Guia Linux][1]) e os drivers de Wireless foram atualizados. Para resumir, quando vim para a faculdade descobri que não conseguia conectar meu micro.

Por uma sorte incrível estava comigo um CD do Ubuntu 7.0.4 que pretendia dar uma olhada. Este é um relato de como consertei meu sistema através do Ubuntu e sua facilidade configurar o Hardware.

Bom, como disse, meu Wireless não estava funcionando, então usei o CD do Ubuntu para dar boot na maquina. Como o Ubuntu foi feito para funcionar “out of the box”, minha placa wi-fi foi imediatamente localizada e pude conectar na web.

Dessa forma, com a ajuda de um [guia de recuperacao do GRUB][2] (que não era o meu problema) pude entrar no meu gentoo e fazer tudo como se estivesse nesse sistema (afinal é tudo Linux…). Para isso fiz:

**sudo mkdir /mnt/root  
sudo mount -t ext3 /dev/sda3 /mnt/root  
sudo mount -t proc none /mnt/root/proc  
sudo mount -o bind /dev /mnt/root/dev  
sudo cp -L /etc/resolv.conf /mnt/root/etc/resolv.conf  
sudo chroot /mnt/root /bin/bash**

Estava agora em casa, com uma pequena excessão que, no Ubuntu, as partições são sda e nao hda como estava acostumado, mas isso não foi um problema. Dei alguns emerges, recompilei o kernel, alterei algumas configurações e finalmente consegui meu Wireless no Gentoo devolta (mais ou menos, tive que fazer uma gambiarra).

Portanto, fica como dica, mesmo que não use o Ubuntu carregue consigo o CD de instalação que pode eventualmente ser útil, por exemplo para fazer a instalacao do Gentoo quando seu Wireless não funciona. Outra dica, não atualize seu sistema no dia da entrega de trabalho… 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://vidageek.net/2007/05/01/guia-linux-parte-iv-aplicativos/ "Guia Linux - Parte IV: Aplicativos"
 [2]: http://ubuntuforums.org/showthread.php?t=224351 " How to install Grub from a live Ubuntu cd."





