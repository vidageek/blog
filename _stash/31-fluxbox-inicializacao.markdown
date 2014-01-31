---
layout: post
title: Como rodar programas na inicialização do Fluxbox
author: Jonas Abreu
---

Uma das coisas mais legal do [Fluxbox][1], é que você configura ele inteiro via
arquivos de texto bem simples.

Um desses arquivos simples é o [startup][2], que é rodado logo antes da inicialização
do fluxbox (na verdade, ele é quem invoca o fluxbox).

Como você faz para rodar um programa na inicialização do fluxbox? Você simplesmente 
coloca o comando lá. O `startup` é um arquivo shell. A única coisa que você precisa
tomar cuidado é de não colocar nada depois da linha 

    exec fluxbox

porque quando essa linha é rodada, o fluxbox sobe e nada mais é rodado, porque ele não
é um comando que rode em background.

No meu caso, só carrego o dropbox na inicialização, então o fim do arquivo fica mais 
ou menos assim:

    /usr/bin/dropbox start

    exec fluxbox

[1]: http://fluxbox.org/
[2]: http://fluxbox-wiki.org/index.php?title=Editing_the_startup_file
