---
author: Luiz
title: Algumas impressões de JavaME
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Opiniao
  - Programacao
tags:
  - Celular
  - Java
  - JavaME
  - Mobile
  - Portabilidade
post_format: [ ]
---
![][1]  
Recentemente desenvolvi, em parceria com o Rafael, autor aqui do blog, uma aplicação simples em Java para celular. A aplicação é um jogo de batalha naval, que pode ser jogado contra o computador ou contra outro celular, via internet. Vou comentar, aqui, algumas dificuldades que encontrei pelo caminho.



O JavaME foi feito para ser portável e leve. Leve ele é, mas e portável? Fiquei sabendo que era necessário testar a aplicação em diversos modelos de celular para certificar o funcionamento do aplicativo em todos eles. Isso fica mais fácil com os emuladores, mas esses ainda não são 100% confiáveis.

Esse nem foi um problema tão grande para mim. O objetivo do meu projeto era simplesmente desenvolver uma aplicação que rodasse no celular de visor colorido padrão da Sun no emulador. O maior problema foi a falta de recursos do JavaME (como já havia sido avisado por quem nos deu o projeto). Tudo bem que o JavaME tem que ser leve. Mas que sentido faz ele ter, nas classes padrão, a classe Hashtable e não ter uma simples LinkedList? E por que não tem reflection? E por que a String está tão jogada de lado?

Outra coisa que me incomodou, também, foi o grande acoplamento que as classes de visualização te impõem. A classe GameCanvas, por exemplo, é responsável pelo desenho na tela e por parte dos controles (a outra parte você pode por em outra classe). Se eu quiser mudar a camada de visualização da minha aplicação (o que podia ocorrer no nosso caso, já que nosso jogo podia ser no modo texto), vou ter que mudar tudo? E por que não tem uma classe unicamente para o tratamento da entrada?

Agora, alguns elogios: foi bem fácil fazer uma interface gráfica com as classes do sistema. O JavaME já vem com classes para desenho de sprites e múltiplas camadas de imagem, e os sprites contam até com detecção de colisão entre si. Bem mais fácil do que fazer interface para Desktop. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2008/10/javame-136x300.gif "JavaME"
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [5]: http://twitter.com/blogvidageek

