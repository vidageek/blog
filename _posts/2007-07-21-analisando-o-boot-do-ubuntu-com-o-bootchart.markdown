---
author: convidados
title: >
  Analisando o boot do Ubuntu com o
  Bootchart

layout: post
category:
  - Linux
  - Ubuntu
tags:
  - Linux
  - Ubuntu

---
O bootchart cria uma imagem PNG detalhando exatamente o que acontece na sua sequência de boot, mostrando quais processos estão carregando no momento. Com uma análise desse gráfico é possível identificar os gargalos e possivelmente resolve-los, melhorando assim o tempo de boot.

Para instalar o bootchart no Ubuntu, basta executar:  
sudo apt-get install bootchart

Depois basta reiniciar a máquina para que o gráfico seja gerado e então vá até a pasta /var/log/bootchart e você encontrara o PNG gerado. Aqui está o [Bootchart][1] gerado pela minha máquina. 














 [1]: http://vidageek.net/wp-content/uploads/2007/07/feisty-20070718-1.png "Bootchart"





