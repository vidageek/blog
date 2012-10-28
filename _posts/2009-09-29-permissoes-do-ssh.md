---
author: Jonas Abreu
title: Permissões do .ssh
excerpt:
layout: post
category:
  - Dicas
  - Linux
tags:
  - key
  - permissão
  - ssh
post_format: [ ]
---
Uma vez por semestre (pelo menos) eu passo por um problema bizarro quando eu preciso configurar login utilizando chaves de criptografia.

Eu sempre resolvia (depois de quebrar bastante a cabeça) e esquecia qual a solução. Dessa vez, para não esquecer, vou compartilhar com todo mundo aqui :)

O meu problema é simples. O ssh simplesmente ignora minhas chaves. Coloco o nome certo. Adiciono no authorized_keys. E nada do maldito ssh fazer o login sem pedir senha.

A solução a qual sempre chego é simples:

    
    chmod 700 .ssh
    

Minhas permissões para a pasta .ssh estavam erradas. Isso acontece porque eu crio na mão a pasta muitas vezes (em geral, quando estou configurando uma máquina). Por padrão, quando você usa o mkdir, ele cria a pasta como 744, o que significa que outros usuários podem **ler** e executar arquivos de dentro daquela pasta.

É aqui que mora o perigo. Chaves publicas realmente não tem problema que sejam lidas, afinal são publicas. O problema é a sua chave privada. Essa não deve estar acessível por razão alguma. Se outras pessoas podem ler sua chave privada, elas podem se passar por você.

Por causa disso, o ssh checa quais são as permissões do diretório .ssh . Se outros usuários puderem ler sua chave, ele considera ela como comprometida e simplesmente a ignora. O problema é que ele ignora de forma completamente silenciosa. Daí você perde os cabelos procurando pelo problema (nem mesmo rodando no modo verboso ele informa sobre isso). 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek

