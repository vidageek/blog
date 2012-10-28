---
author: Jonas Abreu
title: Em busca dos 64 bits
excerpt:
layout: post
category:
  - Dicas
  - Firefox
  - Linux
  - Ubuntu
tags:
  - Dicas
  - Firefox
  - Linux
  - Ubuntu
post_format: [ ]
---
Já não é novidade pra ninguém que o mundo está sendo tomado pelos processadores com 64 bits. Qualquer micro novo que você compre vem com um processador dual core 64 bits. Mas, como ainda estamos em processo de migração dos 32 para os 64 bits, vários problemas acontecem.

Um dos problemas estou enfrentando agora. O site Banco do Brasil faz autenticação usando uma applet Java. Isso significa que eu preciso ter suporte a java no meu browser (Firefox). Simples:

    
    sudo apt-get install java6-sun-plugin
    

O que acontece? O apt-get diz que não encontra o pacote , embora exista uma referência de um outro pacote a ele. 

Procurando por algum tempo no Google, encontro um site que diz que você precisa acrescentar multiverse ao main do feisty no sources.list. Por acaso já tinha feito isso.

Depois de muito procurar usando o apt-cache (o Google não estava ajudando muito…), encontrei um plugin java 1.4 para o firefox. Pensei: “Melhor que nada. Quem sabe funciona”. Depois de baixar a jre 1.4 (inútil pois estou usando java 6 na máquina), instalar o plugin (j2re1.4-mozilla-plugin), entrei novamente no Banco do Brasil, a applet carregou e… o firefox foi morto por uma NullPointerException causada pelo plugin no momento em que eu passei o mouse em cima da applet.

Triste fim para uma tarde. Mas faz parte do processo de mudança. Até processadores de 64 bits tornarem-se padrão para a produção de software, usuários de linux 64 bits vão sofrer bastante. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek
 [5]: http://vidageek.net/dreamhost/
