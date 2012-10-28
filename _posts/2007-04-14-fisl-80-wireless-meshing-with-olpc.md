---
author: Cecilia Fernandes
title: 'FISL 8.0: Wireless Meshing with OLPC'
excerpt:
layout: post
category:
  - Eventos
  - Fisl
  - News
  - OpenSource
tags:
  - Eventos
  - Fisl
  - Misc
  - News
  - OpenSource
  - Tecnologia
post_format: [ ]
---
Segue o resumo da palestra de ontem “Wireless Meshing with OLPC”. Para aqueles que não estão familiarizados com a sigla, vale explicar que OLPC é um dos laptops educacionais que competem nas licitações estaduais. O “One Laptop Per Child” XO é o modelo mais comentado e, temos que dizer, atrai a simpatia de qualquer um que passe por ele. Em uma breve ocasião, faremos uma notícia explicando as diferenças entre os concorrentes.

De volta à palestra, em densos 35 minutos, Javier Cardona comentou sobre a utilização de meshing nos OLPCs.

Mesh routing são protocolos de roteamento que funciona em redes parcialmente conexas de mesh. Isso sifnifica que um laptop liga a outro, que, por sua vez se liga a outro e assim se forma a rede – não precisam estar todos conversando com um central.

Esse protocolo tem as vantagens de ser auto-configurado e ser capaz de realizar “meta-reparos”, mas tem a desvantagem de ser visivelmente lento.

Atualmente, o projeto está em processo de rascunho e tem apenas uma pequena porção implementada.

Um OLPC conectado à internet se torna um Mesh Portal e disponibiliza internet para outros OLPCs em se range de alcance. Esses, se comunicam com a internet e com outros OLPCs que não estão na área de cobertura do Portal, que passam a disponibilizar de rede também e assim consecutivamente.

Até o momento, o OLPC com Wireless Meshing é capaz de descobrir caminhos que eventualmente o liguem à internet e escolher a melhor rota para transmitir informações com base na força da conexão. Em breve, ele levará em conta, também, a bateria disponível nos laptops no caminho. Ele é capaz de identificar de onde vêm os pedidos de informação e devolvê-las pro lugar certo – menos trivial do que parece.

No fim da palestra, ouve uma demonstração da rede em mesh usada pra enviar um sinal musical para outro. Três XOs foram usado na demonstração sobre área de cobertura. Um deles saiu da área de cobertura, enquanto os outros se mantiam lado a lado. Quando a música cessou, o segundo foi caminhando até a meia distância entre a fonte e o falante da música e pudemos ver a rede de mesh funcionando.

Após a grande sessão de aplausos, a palestra se encerrou. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


