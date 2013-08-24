---
layout: post
title: Curl
author: Jonas Abreu
permalink: /tutorial/bash/curl
tutorial: bash-log
---

Começando um tutorial para aprender [bash][1] parseando logs.

E como o objetivo desse tutorial é viver dentro da shell, vamos começar obtendo o log de exemplo à partir da shell.

### Curl

O `curl` é uma ferramenta para fazer requisições http, ftp, e muitos outros protocolos. Quando usado sem parâmetros, 
ele simplesmente baixa o arquivo que você pedir. Se você rodar

    curl http://www.google.com

Vai ter algo como 

    <HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
    <TITLE>302 Moved</TITLE></HEAD><BODY>
    <H1>302 Moved</H1>
    The document has moved
    <A HREF="http://www.google.com.br/?gws_rd=cr">here</A>.
    </BODY></HTML>

Impresso no seu terminal. Por padrão, o curl imprime no console o conteúdo do arquivo que ele baixou. Se você
quiser que ele guarde em um arquivo, pode usar

    curl http://www.google.com -o arquivo

ou, a forma mais interessante,

    curl http://www.google.com > arquivo

Essa segunda forma é algo muito comum de ser feito em bash. O `> arquivo` significa "redirecione a saída padrão para o arquivo `arquivo`. Então sempre que você quiser guardar a saída de um programa, basta colocar depois dele `> arquivo`.

### Exercício

Baixe o arquivo de log ( `http://www.vidageek.net/public/bash/games.log` ) que usaremos no tutorial usando o `curl`. O 
arquivo deverá chamar-se `games.log`.

[1]: https://en.wikipedia.org/wiki/Bash_(Unix_shell)
