---
author: fabs
title: Enfim um Terceiro Botão..
excerpt:
layout: post
category:
  - Discussões
  - Mac
tags:
  - apple
  - magic mouse
  - might mouse
  - third button
post_format: [ ]
---
Alguns de vocês devem se lembrar que [eu fiz um post reclamando do novo Apple Magic Mouse][1].

Pois bem, outro dia desses estava colocando meus feeds em dia e achei uma recomendação do [Fábio Akita][2] para um post onde havia um hack para que o mouse da Apple tivesse acesso ao terceiro botão. A Aplicação chama-se [MiddleClick][3] e funciona muito bem. No meu caso, as vezes ela trava depois de alguma hibernação, então eu criei um script que reinicia a aplicação e coloquei no cron.

**md-mouse.sh:**

#!/usr/bin/env bash

killall MiddleClick  
open -a MiddleClick

**(usar o comando) crontab -e e adicionar a linha:**

10 *       *        *       *      /Users/fabsn/Library/Scripts/md-mouse.sh

Isso vai fazer com que o script seja reiniciado no minuto 10 de cada hora (a cada 1 hora). 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][5], por [Email][6] ou via [Twitter][7].**  
Veja como ter um desconto no [Dreamhost][8]: um excelente servidor web.

 [1]: http://vidageek.net/2009/11/05/apple-not-that-magic-mouse/
 [2]: http://www.akitaonrails.com/
 [3]: http://clement.beffa.org/labs/projects/middleclick/





