---
author: fabs
title: Truques do Bash
excerpt:
layout: post
category:
  - Uncategorized
tags: [ ]
post_format: [ ]
---
Outro dia desses um amigo meu me mostrou o [command line fu][1], um site de comandos bash. A princípio eu achei besteira, até ver a riqueza dos comandos que eu não conhecia. Seguem alguns exemplos:

1) Esqueci do sudo…

Você está lá, mudando as permissões de arquivos de vários diretórios, e digita:

$ chown fabsn Java/ Perl/ Ruby/  
chown: Java/: Operation not permitted  
chown: Perl/: Operation not permitted  
chown: Ruby/: Operation not permitted

Aí você pensa: “putz, esqueci do sudo!”. O que você faz?

$ sudo !!

Sim. O comando ! é o histórico, experimente digitar !ls, ele vai rodar o seu último ls, ou por exemplo !cd, e ele vai rodar seu último comando cd. Digitando !! ele roda seu ultimo comando.

2) Digitei errado

Você está fazendo um branch bzr, e digita:

$ bzr co bzr+svn://umdominio.qualquer.**ALI**/meubranch/essapasta/essearquivo.extensão

Mas então você se lembra que o branch está em umdominio.qualquer.**AQUI**. O que você faz, seta para cima? Não:

$ ^ALI^AQUI

bzr co bzr+svn://umdominio.qualquer.**AQUI**/meubranch/essapasta/essearquivo.extensão

Sim, ele acabou de rodar o último comando trocando a string ALI por AQUI. Mágico, não?

Bom, esses e outros comandos estão disponíveis em [command line fu][1]. Convido todos que acharem algum comando mais interessante lá a deixarem um comentário. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://www.commandlinefu.com/commands/browse/sort-by-votes
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


