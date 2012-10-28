---
author: Luiz
title: Firefox 3.5 e Gears no Ubuntu
excerpt:
layout: post
category:
  - Dicas
  - Firefox
  - Google
  - Linux
  - Ubuntu
tags:
  - Firefox
  - gears
  - Google
  - shiretoko
  - Ubuntu
post_format: [ ]
---
![Firefox 3.5, aqui vamos nós][1]  
Apenas muito recentemente consegui fazer o Firefox 3.5 do Ubuntu, também conhecido como Shiretoko, funcionar com o plug-in Google Gears. Foram, basicamente, duas bobagens que impediram a instalação e o uso desse plug-in com facilidade.

O primeiro problema é culpa do Ubuntu. O Firefox 3.5 vem rebatizado de Shiretoko no Ubuntu. Isso significa que o navegador não é reconhecido como Firefox pelos servidores. Assim, a página de instalação do Google Gears diz que seu navegador não é suportado. Para contornar isso, é necessário mudar o nome que seu navegador usa para se identificar para o servidor. Você pode mudar isso facilmente: abra seu navegador Shiretoko, acesse a URL “about:config”, confirme que você sabe o que está fazendo (!), filtre a lista por “useragent” e troque “Shiretoko” por “Firefox” no valor da chave “general.useragent.extra.firefox”. Para confirmar que isso deu certo, entre novamente na página do Google Gears. Se o botão de instalação apareceu, ok.

O segundo problema aconteceu porque eu já utilizava o Google Gears no Firefox 3.0. Por algum motivo (não sei se isso acontece sempre), o Google Gears do Firefox 3.0 e o do Firefox 3.5 estavam utilizando a mesma pasta para guardar dados e configurações. Então o Gears do Firefox 3.5 encontrava as configurações do Gears do Firefox 3.0 e isso gerava diversos erros de navegação; redirecionamento sem fim no login do GMail, por exemplo. Infelizmente, a minha solução para esse problema foi apagar a pasta em que ficavam essas configurações: ~/.mozilla

Depois de tudo isso e de baixar todos os meus e-mails do GMail novamente, finalmente funcionou! Se você tiver uma outra solução para o problema, compartilhe!

Montagem tosca por mim mesmo, utilizando os ícones do Firefox 3.0, do Shiretoko e do Google Gears 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2009/10/logo.png "Firefox 3.5, aqui vamos nós"
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [5]: http://twitter.com/blogvidageek
 [6]: http://vidageek.net/dreamhost/
