---
author: convidados
title: Deixando seu Ubuntu mais rápido
excerpt:
layout: post
category:
  - Dicas
  - Linux
  - Ubuntu
tags:
  - Dicas
  - Linux
  - Ubuntu
post_format: [ ]
---
O Ubuntu é uma distribuição do tipo instale-esqueça, em que usuário iniciantes em Linux podem ter um sistema open-source fácil de usar e capaz de realizar as mesmas coisas que já estão acostumados com sistemas proprietários. Mas existe alguns truques que podem ser feitos para melhorar a eficiência geral do sistema e que por motivos de compatibilidades não estão ativos após a instalação. Segue três itens interessantes sobre este aspecto:

Controle do SWAP

O Swap é feito toda vez que o sistema acredita que deva guardar no disco parte das informações da RAM para não ocupá-la inteiramente. Existe um forma de definir quão frequentemente o kernel deve realizar o swap, apesar de o assunto ser [discutível][1].

Você pode descobrir o seu “swappiness” através do comando  
`sudo cat /proc/sys/vm/swappiness`

Seu sistema deve ficar mais rápido se você diminuir este valor, através do comando  
`sudo sysctl -w vm.swappiness=10`

Mas esta alteração não é permanente, para alterar permanentemente este parâmetro altere o arquivo `/etc/sysctl.conf` na opção `vm.swappiness` e mude para 10 (crie se não existir).

**Removendo Terminais**

Se você não usa muito os terminais do seu Ubuntu, você pode diminuir o numero dos mesmos para economizar memória. Para isso edite o arquivo `/etc/inittab`, procurando pela linha  
`2345:respawn:/sbin/getty 38400 tty1`  
Ela e as seguintes indicam cada um dos tty’s e você pode comentá-las com um # na frente da linha. Recomendo não remover o tty1 pois ele pode ser útil se algo de estranho ocorrer com o seu X.

**Boot Concorrente**

Como o Ubuntu foi criado para um sistema genérico ele não utiliza os outros (possivelmente existentes) processadores da máquina durante o processo de inicialização. Editando o arquivo `/etc/init.d/rc `trocando `CONCURRENCY=none` para `CONCURRENCY=shell ` você muda o seu boot de normal para paralelo. Para ver se isto foi útil você pode usar o [Bootchart][2]. 
**Posts Relacionados:** 
*   No related posts



[Tweet][3] 





**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://kerneltrap.org/node/3000 "Kernel Trap - Linux: Tuning Swappiness"
 [2]: http://vidageek.net/2007/07/21/analisando-o-boot-do-ubuntu-com-o-bootchart/ "VidaGeek.net: Analisando o boot do Ubuntu com o Bootchart"
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/
