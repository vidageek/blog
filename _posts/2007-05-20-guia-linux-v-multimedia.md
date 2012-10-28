---
author: convidados
title: 'Guia Linux V: Multimedia'
excerpt:
layout: post
category:
  - Gentoo
  - Linux
tags:
  - Gentoo
  - itunes
  - Linux
  - mpg123
  - mplayer
  - rhythmbox
  - totem
post_format: [ ]
---
Nessa parte do Guia Linux iremos abordar como utilizar o seu Gentoo para assistir filmes e escutar música no seu computador. Começamos ensinando como escutar MP3s e então abordaremos a visualização de filmes em vários formatos.

**MP3**  
Descobrir como executar mp3 no Gentoo foi um pouco mais complicado do que eu esperava, já que a Wiki do Gentoo não aborda o assunto diretamente e instalando qualquer software de execução não implica na instalação das bibliotecas necessárias.

Após tentar várias coisas, lembrei do **mpg123** (ou seu irmão mpg321) que foi capaz de tocar a música, mas infelizmente não conheço um *front-end* para ele e portanto tive que rodar pelo terminal, o que não é muito interessantes para uma biblioteca grande de mp3. Se quiser dar uma olhada instale com `<strong>emerge mpg123</strong>.`

O **Mplayer** (veja mais abaixo) também foi capaz de executar, mas ele não é tão interessante quanto outros aplicativos. Meu objetivo era que o **Rhythmbox** (que tem um sistema mais parecido com **iTunes**) fosse capaz de executar meus arquivos, mas apesar de uma instalação simples com `<strong>emerge rhythmbox</strong>` ele não cumpriu o objetivo e nem o **Totem** que já vem com o **Gnome**.

Depois de alguma pesquisa descobri que era preciso usar o **gst-plugin-mad** e para tanto adicionei **mad** a variável **USE ** (no /etc/make.conf) e executei `<strong>emerge gst-plugin-mad</strong>`. A partir deste momento tanto o Rhythmbox quanto o Totem foram capazes de executar o arquivo.

**Mplayer**  
O [Mplayer][1] é possivelmente o player de videos mais famoso para o Linux. Ele suporta praticamente qualquer formato de arquivo que você imaginar, até os proprietários. Sua instalação é bem simples, basta executar `<strong>emerge mplayer</strong>`, mas antes de uma olhada nas USE flags que sugerimos abaixo.

*   Codecs do Windows: Adicione win32codecs a sua varável USE para suportar a maior parte dos codecs do Windows.
*   Quicktime: adicione a flag quicktime para ver filmes em formato .mov, para ver os filmes no seu Firefox leia mais abaixo.
*   Realplayer: Adicione as flags real e realmedia para ver arquivos no formato .rm.
*   Divx e Xvid: Adicione a flag xvid.

Executando o Mplayer no Firefox: Para isso é necessário usar o mplayerplug-in que pode ser facilmente instalado com **`emerge mplayerplug-in`**, isso trará todo o poder do Mplayer ao seu browser preferido.

Caso você adicione alguma flag após ter instalado o mplayer pode ser necessário executar um `<strong>emerge --verbose --ask --new mplayer mplayerplug-in</strong>.`

**UPDATED:** Caso você tenha problemas com o Totem tentando executar seus filmes no Firefox coloque **media-video/totem -firefox -nsplugin** no **/etc/portage/package.use** e execute um **emerge -vaN totem**.

**Assistindo ****DVD**  
Quando queremos acessar um dispositivo removível (como o DVD), precisamos usar o comando mount para mapear o conteúdo numa pasta determinada, por exemplo:  
**`mount /dev/cdrom /mnt/cdrom`**  
irá permitir o acesso ao seu CD (DVD) na pasta /mnt/cdrom (mais informações em man mount). Lembrando que seu usuário precisa fazer parte do grupo cdrom para poder montar o dispositivo (ou o comando seja executado pelo root).  
Outra opção é a configuração de montagem automática pelo fstab, adicionando a linha:`<br />
<strong> /dev/hdc                /mnt/cdrom      auto            noauto,ro,user  0 0</strong>`  
O problema é que isso possivelmente nenhuma das duas opções irá funcionar e você receberá o seguinte erro:`<br />
<strong> mount: unknown filesystem type 'udf'</strong>`  
Para poder montar o DVD será necessário recompilar o Kernel ativando a opção`<br />
<strong>File Systems -><br />
CD-ROM/DVD Filesystems-><br />
<*>UDF File System Suport</strong>`**  
** Aproveite e adicione a flag **dvd** na variável **USE**. Mas o** totem**, não foi capaz de executar o filme. A solução mais simples foi assistir pelo Mplayer, mas um problema surgiu: o [][1]Mplayer, assim como a maioria dos players que suportam DVD, misteriosamente **não suportam a exibição do menu do DVD**. Por isso, uma solução melhor foi:  
`<strong>emerge ogle ogle-gui</strong>`  
pois o player [Ogle][2] é capaz de realizar este trabalho com maestria, tornando seu micro um ótimo dvd player.

Bom, acredito que isto cubra praticamente tudo sobre Multimedia no Gentoo. Caso eu tenha esquecido de algo ou tenha alguma sugestão, por favor mande-nos um comentário! 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://en.wikipedia.org/wiki/Mplayer "Mplayer na Wikipedia"
 [2]: http://en.wikipedia.org/wiki/Ogle_DVD_Player "Ogle na Wikipedia"
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek



