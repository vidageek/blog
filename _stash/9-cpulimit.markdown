---
layout: post
title: cpulimit
author: Jonas Abreu
---

Eu estava tendo problemas renderizando vídeos no meu computador. O [openshot][1] disparava 
muitas threads e o ubuntu desligava depois de um tempo por causa da temperatura do cpu.

Como eu não tinha me tocado que a velocidade do cooler não estava aumentando 
(provavelmente [starvation][2] no processo que controla a velocidade do cooler), resolvi 
reduzir quanto cpu o openshot estava consumindo.

Encontrei o [cpulimit][3], que é muito fácil de usar:

    sudo cpulimit -p PID -l PORCENTAGEM

`PID` é o id do seu programa rodando (você encontra usando o `ps`)
`PORCENTAGEM` é a porcentagem de uso de cpu que você permite. A parte estranha é que é a 
porcentagem global e não por cpu. Portanto se você tem 8 cores e quer limitar à 50% o uso
de cada um deles, você passa 400 e não 50.

[1]: http://www.openshotvideo.com/
[2]: http://stackoverflow.com/questions/1162587/what-is-starvation
[3]: http://cpulimit.sourceforge.net/
