---
author: Jonas Abreu
title: Por que filtrar ips não deu certo
excerpt:
layout: post
category:
  - Dicas
  - Opiniao
tags: [ ]
post_format: [ ]
---
![][1]

No fim do ano passado, publiquei um post falando sobre [ uma estratégia ][2] que talvez tivesse algum efeito contra os infinitos spams que recebemos no blog todos os dias.

Durante alguns meses tivemos uma surpreendente redução no número de spams recebidos diariamente (cerca de 80 % menos spams.)

O problema é que nesse tempo, começamos a notar que o blog começou a demorar mais para responder. Foi nesse momento que notei que o servidor estava tendo dificuldade para lidar com a lista de mais de 100 ips para bloquear. Para cada requisição que era feita ao blog, ele deveria checar se o ip estava na “lista negra” e então negar o acesso.

Aparentemente isso não é feito de forma muito eficiente pelo apache, o que começou a causar a demora de resposta do blog.

Por isso tive que remover todos os ips da lista (e consequentemente voltando a receber uma bela avalanche de spams).

Agora estamos de volta a estaca zero, confiando que o [Akismet][3] vai segurar todos os spams (o que não acontece. Eventualmente passa um comentário que tem que ser marcado como spam manualmente).

Um dia a gente vence essa briga.

##### *Imagem via [3spam.com][4]</h5> 
</i> 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][6], por [Email][7] ou via [Twitter][8].**  
Veja como ter um desconto no [Dreamhost][9]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/public_html/no-spam.jpg
 [2]: http://vidageek.net/2007/11/05/combatendo-spammers/
 [3]: http://akismet.com/
 [4]: http://3spam.com/
 [5]: https://twitter.com/share
 [6]: http://feeds.feedburner.com/VidaGeek
 [7]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [8]: http://twitter.com/blogvidageek

