---
author: convidados
title: Atualizando o RubyGems no Mac
excerpt:
layout: post
category:
  - Ruby
tags:
  - Gems
  - Mac
  - Mac OSX
  - Ruby
post_format: [ ]
---
![Rubygems][1]  
Recentemente fui iniciar um projeto pessoal utilizando Ruby on Rails. Meu objetivo era utilizar o Cucumber para fazer teste de integração e desenvolvimento dirigido por comportamento. Ao tentar utilizar o “rake features” para gerar os arquivos do Cucumber, obtive o seguinte resultado: 

    Schouery:projeto schouery$ rake features
    (in /Users/schouery/Documents/projeto)
    Rails requires RubyGems >= 1.3.1 (you have 1.2.0).
    Please `gem update --system` and try again.
    

O natural foi executar o comando pedido, apenas para ser frustrado: 

    Schouery:projeto schouery$ sudo gem update --system
    Updating RubyGems
    Nothing to update
    

Pesquisando por ai, encontrei um [post][2] que resolveu meu problema. Basta instalar a gem rubygems-update e então executar “update_rubygems”. Veja o resultado abaixo: 

    Schouery:projeto schouery$ sudo gem install rubygems-update
    Successfully installed rubygems-update-1.3.1
    1 gem installed
    Schouery:projeto schouery$ sudo update_rubygems
    Installing RubyGems 1.3.1
    ...
    

Espero que essa dica possa ajuda-lo. Até mais! 

**Posts Relacionados:** 
*   No related posts



[Tweet][3] 





**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2009/02/rubygems.png
 [2]: http://blog.libinpan.com/2008/04/update-rubygems-to-new-version-on-leopard/ "post"
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/
