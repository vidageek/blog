---
author: Jonas Abreu
title: Combatendo Spammers

layout: post
category:
  - Dicas
tags:
  - Dicas
post_format: [ ]
---
Eu odeio spam. Fico realmente incomodado em receber centenas de comentários spam por dia. Mesmo com o [Akismet][1] segurando quase tudo (de vez em quando um passa por ele), eu gostaria de um controle mais rígido. Num mundo ideal eu gostaria de nem receber esses spam.

Uma coisa que notei nos spam é uma certa recorrência nos [IPs][2]. Resolvi então começar a bloquear alguns IPs com o [htaccess do Apache HTTPD][3].

Resultado? Em uma semana e meia o número de spam (proveniente da faixa que eu escolhi para atacar) caiu consideravelmente.

A minha idéia é simples. Para cada spam que recebo, pego o IP de onde ele veio e acrescento uma linha “deny from” no meu htaccess para esse cara. Mas existem milhões de computadores zumbis no mundo. Não tem problema. Não faz o menor sentido que todos eles estejam mirados contra o meu servidor. Bloqueei cerca de 40 IPs e já obtive um bom resultado.

Para evitar prejuízo (como vítimas de bloqueios indevidos) para os leitores do blog, não estou bloqueando nenhum intervalo de IPs (as vezes dá vontade. Dos quarenta, sete só variam no quarto bloco). Também não estou bloqueando IPs na faixa de 220.\*.\*.* até 180.\*.\*.* pois embora eu não conheça muito como funcionam os intervalos de IPs, sei que 99% dos leitores desse blog estão nessa faixa. Meu próximo passo é bloquear pelo nome do servidor, pois mesmo que o spammer receba um outro IP, o bloqueio continuará.

Quando eu comecei a bloquear não esperava resultados tão rápido. A partir dessa semana vou começar a registrar a evolução do número de spams, e caso isso não tenha sido um movimento sazonal, postarei dados concretos sobre isso.

**Posts Relacionados:** 
*   No related posts












 [1]: http://akismet.com/
 [2]: http://en.wikipedia.org/wiki/IP_address
 [3]: http://httpd.apache.org/docs/1.3/howto/htaccess.html





