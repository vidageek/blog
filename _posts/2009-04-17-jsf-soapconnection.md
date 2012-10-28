---
author: Jonas Abreu
title: 'JSF - SOAPConnection'
excerpt:
layout: post
category:
  - Java
  - Programacao
tags:
  - call
  - object
  - soap
  - soapconnection
  - soapmessage
  - sobrecarga
post_format: [ ]
---
Continuando com a série Java’s Signal of Failure (JSF), uma saída esperta e preguiçosa.

Dêem uma olhada no seguinte método da JDK 6, da classe `javax.xml.soap.SOAPConnection`

    
    public abstract SOAPMessage call(SOAPMessage request, Object to);
    

Prestem bastante atenção no último parâmetro que o método recebe. Isso mesmo. Um brilhante e magnífico java.lang.Object. Depois de ficar chocado com a assinatura, decidi dar uma olhada na documentação pra ver se entendia essa bizarrice.

Seja quem for que criou esse método, quis evitar que quem estivesse criando sua própria SOAPMessage precisasse sobrescrever três métodos. Por isso, ele recebe um object, mas deve ser um java.lang.String, java.net.URL ou um javax.xml.messaging.URLEndpoint.

Agora, esse foi um dos piores lugares em que eu já vi um Object. Por que raios não usaram sobrecarga de método? Custava deixar a API nojenta de SOAP um pouquinho mais legível? 

Erro feio esse! O que será que acontece se eu passar um Long pro método? Exception? Devolve null? O comportamento que deveria ser padrão não está documentado. Triste, não? 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek
 [5]: http://vidageek.net/dreamhost/
