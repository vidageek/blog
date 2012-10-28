---
author: Jonas Abreu
title: >
  Como carregar extensões do kernel no
  Mac OS X
excerpt:
layout: post
category:
  - Dicas
tags:
  - kernel
  - kextload
  - Mac
  - wifi
post_format: [ ]
---
Meses atrás passei por uns problemas com meu mac. Estava rodando um programa chamado Kismac, que serve para monitoramento de redes wifi. O problema é que a versão que eu tinha instalado (baixando direto do site) estava com um problema. Quando eu tentei carregar o driver da minha wifi com ele (na verdade, errei o driver), recebi uma tela bem bonita informando que eu deveria desligar o notebook. Desliguei. Quando liguei novamente, recebi uma mensagem de erro informando que uma extensão do kernel não pode ser carregada. Eu tinha acabado de corromper a extensão do kernel que gerencia wifi. E também cliquei em um botão para ele parar de procurar pela extensão. Pois é… se burrice matasse…

Enfim, quando percebi a besteira, copiei de um outro mac a extensão exata (por sorte, eu tinha copiado o nome e local onde ela deveria ficar). Coloquei no lugar e nada. Estava quase desistindo e pensando em formatar a máquina quando por acaso encontrei um programa que fazia exatamente o que eu queria. Carregava extensões do kernel. O programa chama-se kextload (existe por padrão na shell do Mac OS X).

Depois de rodá-lo (passando a extensão de wifi como parâmetro), ele também corrigiu a cache de extensões que estava zoada (por causa da zona que tinha feito) e tudo voltou a funcionar perfeitamente bem. Apenas não recomendo que tentem em casa, a não ser que seja a última esperança :) 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


