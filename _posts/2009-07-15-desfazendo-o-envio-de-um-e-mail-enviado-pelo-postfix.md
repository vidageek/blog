---
author: Luiz
title: >
  Desfazendo o envio de um e-mail enviado
  pelo Postfix

layout: post
category:
  - Dicas
  - Linux
tags:
  - mailq
  - postfix
  - sendmail

---
Esses dias estava trabalhando com uma aplicação web que tinha que mandar um e-mail de confirmação de cadastro. Fiz uns testes manuais e, por burrice minha, me cadastrei com um e-mail que existe e que não é meu! Minha sorte é que, na rede em que estava, a porta de envio de e-mails (SMTP) estava bloqueada. Isso fez com que meu e-mail ficasse preso na fila do Postfix para uma nova tentativa de entrega mais tarde. Pesquisando um pouquinho nos manuais do Postfix, descobri algumas coisas interessantes.

A primeira: como verificar a fila de e-mails. Um simples comando me mostrou que já tinha 99 e-mails para enviar.  
`<br />
mailq<br />
`  
Esse comando é, na verdade, um *alias* para um comando do Postfix:  
`<br />
postqueue -p<br />
`

Agora, a parte mais importante: como remover esses e-mails antes que eles sejam enviados. Mais um simples comando, mas dessa vez como superusuário:  
`<br />
postsuper -d ALL<br />
`  
O ‘-d’ especifica quais e-mails da lista remover. Você pode ver o código na saída do comando ‘mailq’.

Ufa! Quase lotei a caixa de e-mails de alguém… 



















