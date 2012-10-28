---
author: convidados
title: >
  Analisando o boot do Ubuntu com o
  Bootchart
excerpt:
layout: post
category:
  - Linux
  - Ubuntu
tags:
  - Linux
  - Ubuntu
post_format: [ ]
---
O bootchart cria uma imagem PNG detalhando exatamente o que acontece na sua sequência de boot, mostrando quais processos estão carregando no momento. Com uma análise desse gráfico é possível identificar os gargalos e possivelmente resolve-los, melhorando assim o tempo de boot.

Para instalar o bootchart no Ubuntu, basta executar:  
sudo apt-get install bootchart

Depois basta reiniciar a máquina para que o gráfico seja gerado e então vá até a pasta /var/log/bootchart e você encontrara o PNG gerado. Aqui está o [Bootchart][1] gerado pela minha máquina. 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][2] 





**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2007/07/feisty-20070718-1.png "Bootchart"
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [5]: http://twitter.com/blogvidageek
 [6]: http://vidageek.net/dreamhost/