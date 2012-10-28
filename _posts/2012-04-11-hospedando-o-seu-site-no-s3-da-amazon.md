---
author: Jonas Abreu
title: Hospedando o seu site no S3 da Amazon
excerpt:
layout: post
category:
  - Dicas
  - Programacao
tags: [ ]
post_format: [ ]
---
Eu achava que ia ser mais complicado, mas no fim é bem fácil.

Segue um roteiro básico:

1.  Acesse o [console do S3][1]
2.  Clique em Create Bucket
3.  Preencha colocando um subdomínio do seu site (www, no meu caso) ![][2]e escolha onde quer que ele fique (meu público alvo é o Brasil, então coloquei em São Paulo)
4.  Clique no seu bucket (que apareceu à sua esquerda), clique em Properties (no lado direito da tela)
5.  Vá para a aba Website, clique em enabled e escolha o seu documento inicial (no meu caso, index.html)  
    ![][3]
6.  Clique em save
7.  Agora você precisa configurar o seu subdomínio no DNS. Basta acrescentar um registro CNAME do seu subdomínio apontando para o endpoint que aparece na parte de baixo da aba Website.
8.  Depois que o dns se propagar, seu site funcionará no seu subdomínio. O que você pode fazer é subir uma aplicação em algum lugar que redirecione para o seu subdomínio quando alguém acessar o domínio ou usar um site como [WWWizer][4] que automaticamente faz isso pra você.

E pronto. Basta fazer o upload dos arquivos.

**Posts Relacionados:** 
*   No related posts



[Tweet][5] 





**Acompanhe-nos por [ RSS][6], por [Email][7] ou via [Twitter][8].**  
Veja como ter um desconto no [Dreamhost][9]: um excelente servidor web.

 [1]: https://console.aws.amazon.com/s3/home
 [2]: /public/criar_bucket.png
 [3]: /public/habilitar_site.png
 [4]: http://wwwizer.com/naked-domain-redirect
 [5]: https://twitter.com/share
 [6]: http://feeds.feedburner.com/VidaGeek
 [7]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [8]: http://twitter.com/blogvidageek
 [9]: http://vidageek.net/dreamhost/
