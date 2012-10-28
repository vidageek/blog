---
author: Jonas Abreu
title: >
  Como mudar o header host de uma
  requisição feita com Java
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags: [ ]
post_format: [ ]
---
Não sei exatamente em qual update do JDK 6 alguns headers Http, como o HOST, tiveram a sua modificação proibida por padrão, o que fez um amigo meu perder alguns dias de trabalho caçando um bug que surgiu repentinamente no cluster de produção.

Para habilitar a modificação desses headers restritos, você precisa executar:

    
    System.setProperty("sun.net.http.allowRestrictedHeaders",
                                                    "true");
    

Antes do código que modifica o header. 
**Posts Relacionados:** 
*   No related posts



[Tweet][1] 





**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek
 [5]: http://vidageek.net/dreamhost/
