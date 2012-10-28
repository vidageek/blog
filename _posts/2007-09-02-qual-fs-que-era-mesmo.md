---
author: Jonas Abreu
title: Qual fs que era mesmo?

layout: post
category:
  - Dicas
  - Linux
tags:
  - Dicas
  - disktype
  - Linux
post_format: [ ]
---
Recentemente tive um problema com meu notebook (um iBook consideravelmente idoso). Por algum motivo a placa de video queimou e sairia mais barato comprar um novo do que arrumar. O que fiz? Comprei um computador de mesa muito melhor pelo mesmo preço. Mas isso me trouxe um belo problema. Tenho vários cds gravados com o formato padrão do Mac (que eu nem imaginava qual era). Pensei, “Ah, o mount se vira, detecta o formato e monta direito”. Gastei neurônio a toa. O mount simplesmente diz que eu preciso especificar o formato da mídia.

Depois de quase duas horas procurando uma forma de montar o cd encontrei um programa muito interessante: o [DiskType][1].

O DiskType é um daqueles programas pequenos (o fonte dele tem 44Kb) mas que são muito úteis. Ele simplesmente identifica o filesystem de um dispositivo.

Pronto. Rodando ele no /dev/cdrom, ele informou que o filesystem era o hfsplus.

Fica a dica para os que costumam trabalhar com midias em formatos estranhos (ou os que, como eu, esquecem o formato delas). 
**Posts Relacionados:** 
*   No related posts












 [1]: http://disktype.sourceforge.net/





