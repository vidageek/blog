---
author: Jonas Abreu
title: s3-jekyll-deploy
layout: post
---

Desde que eu comecei a colocar [sites no S3][1], uma coisa que me irritou bastante foi o tempo
que demorava para o deploy do site terminar.

Um site como o VidaGeek.net, que tem quase 400 posts, demorava meia hora porque o script
que enviava os arquivos era muito burro.

Pra resolver isso, criei [um script sujo, imundo, porco e nojento][2] que simplesmente verifica
se o SHA do arquivo mudou desde o último deploy. Se mudou, envia. Senão não faz nada :)

Se mais alguém passa pelo mesmo problema, talvez ele ajude. Mas repito, é um código bem horrendo...

[1]: http://www.vidageek.net/2012/04/18/como-fazer-upload-para-o-s3-da-amazon/
[2]: https://github.com/vidageek/s3-jekyll-deploy
