---
author: convidados
title: Gerando memória swap on-the-fly
excerpt:
layout: post
category:
  - Gentoo
  - Linux
  - Ubuntu
tags:
  - Gentoo
  - Linux
  - Ubuntu
post_format: [ ]
---
No Linux (qualquer distribuição) é possível aumentar a sua memória** swap** (responsável por armazenar partes da sua RAM no disco) com uma pequena série, bem simples, de comandos. Isso é útil para não precisar reparticionar seu disco por falta de swap.

Primeiro criamos um arquivo (aqui chamado de container) com count blocos de tamanho bs (no caso, 64 blocos de 1024k, ou seja, 64M):  
`<br />
dd if=/dev/zero of=container bs=1024k count=64<br />
`

Posteriormente, criamos a estrutura de swap no arquivo:  
`<br />
mkswap container<br />
`

E finalmente, adicionamos mais swap:  
`<br />
swapon container<br />
`

**Atenção:** Isso não faz com que essa memória de swap esteja disponível após um reboot. Para isso você deve adicionar o swapon container nos scripts de inicialização do seu sistema. 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][1] 





**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek
 [5]: http://vidageek.net/dreamhost/