---
layout: post
title: Instalando Ubuntu 13.10 em um Vostro 3460
author: Jonas Abreu
---

Depois de muito tempo com um mac, eu finalmente voltei para Linux e não poderia 
estar mais feliz (apple nunca mais!). Fazia tempo que eu não tinha um sistema
que simplesmente responde as minhas ordens ([fluxbox][1] continua sensacional!).

Tive apenas um pequeno probleminha para instalar o ubuntu 13.10 na máquina (Vostro 3460), 
porque o hd é um pouco estranho (um híbrido ssd + 7200 rpm).

O instalador do ubuntu 13.10 se perdeu bem com isso e não encontrou o disco. Para resolver
o problema, fiz o seguinte:

- Na bios (`F2` no boot), em `Advanced` eu mudei o `Sata Operation` para `AHCI`.
- Bootei a máquina com o ubuntu do pendrive e desativei o raid entre o ssd e o 7200 rpm
        sudo dmraid -an # desativa o raid array
        sudo dmraid -x  # remove o raid array
- Mandei instalar e funcionou maravilhosamente :D

P.s.: Como fiquei com um sistema extremamente rápido, um pouco mais de informação:

- Particionei da seguinte forma a máquina:
        / => no ssd
        /home => no outro hd
- Instalei o fluxbox. Simplesmente rápido e fácil de configurar keybind para o que você 
quiser :D 

[1]: http://fluxbox.org/
