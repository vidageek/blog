---
author: convidados
title: Gerenciadores de dispositivos no Linux
excerpt:
layout: post
category:
  - Gentoo
  - Linux
tags:
  - Gentoo
  - Linux
post_format: [ ]
---
O Guilherme, um dos nossos leitores mandou, através de um comentário no [Guia Linux – Parte I: Introdução][1], uma dúvida sobre a relação entre o **Udev** e o **Coldplug** no Gentoo basicamente sobre qual utilizar (pois a um conflito no portage entre os dois), quais eram as conseqüências de não instalar o Coldplug e qual era a funcionalidade do Udev.

Basicamente, o Udev gerencia os dispositivos no Linux e o Coldplug permite detecção dos mesmos. Inicialmente o Linux utiliza o Devfs e então passou de forma geral a utilizar o Udev, mas o Gentoo fez uso durante algum tempo do Coldplug. Para entender melhor cada um deles leia abaixo.

**Devfs **

O Devfs é o gerenciador responsável pelo controle dos dispositivos no kernel 2.4 e em muitos outros sistemas Unix. A idéia é representar os dispostivos como arquivos (localizados no `/dev`) para permitir o acesso ao mesmo. Um exemplo disso é o `/dev/hda1` que indica a primeira partição do HD master primário. Mas a manuteção desse sistema de arquivo se torna muito complexa para os desenvolvedores por vários motivos como a nomenclatura de dispositivos USB (qual é o primeiro dispositivo? O que ocorre quando ele é desconectado?)

**Hotplug e Coldplug**

Hotplug é a característica de um hardware de poder ser conectado com o máquina ligada, como o mouse PS/2 por ou um memory key por exemplo, enquanto que o Coldplug é um Hotplug mais restrito, para hardwares que precisam ser iniciados antes do SO inteiro carregar (uma placa de rede por exemplo).  
Algumas distribuições usam ou usavam (o Gentoo com o genkernel por exemplo) um sistema diferente do udev para a detecção desses dispositivos (no caso do Gentoo chamado de coldplug) o [Linux Hotplugging][2]. No Gentoo Linux estes sistemas não são mais utilizados por já estarem no Udev .

**Udev**

O Udev tem o propósito de resolver esses problemas criados pelo Devfs, criando e removendo automáticamente os arquivos de dispositivo (devices files) e nomear os dispostivos de forma consistente. Para isto o projeto é dividido em 3 partes: namedev (responsável pelo nomeação), libsysfs (responsável pelo acesso ao dispositivos pelo udev através do kernel de forma transparente) e o próprio udev que recebe pedidos do kernel para alterar a estrutura do /dev. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://vidageek.net/2007/03/15/guia-linux-parte-i-introducao/ "Guia Linux - Parte I: Introdução"
 [2]: http://linux-hotplug.sourceforge.net/ "Linux Hotplugging"





