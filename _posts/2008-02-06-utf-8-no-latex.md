---
author: Jonas Abreu
title: UTF-8 no Latex

layout: post
category:
  - Dicas
  - Latex
  - OpenSource
  - Ubuntu
tags:
  - tetex
  - texlive
  - utf-8
  - utf8
post_format: [ ]
---
Recentemente tive um problema com uma mudança de pacotes no Ubuntu. O antigo TeTex foi substituido pelo TeXLive, que possui uma pequena incompatibilidade no uso de arquivos com encoding UTF-8 (e quando você manda instalar o TeTex, ele instala o TeXLive).

A diferença é realmente pequena, mas me custou algumas horas de dor de cabeça e Google (que não ajudou muito).

No TeTex, para usar UTF-8, você inseria o seguinte comando:

    
    \usepackage[utf-8]{inputenc}
    

Com o TeXLive fica:

    
    \usepackage[utf8]{inputenc}
    

O erro gerado (pela ferramente pdflatex), se você colocar o “-”, é o seguinte:

    
    ! LaTeX Error: File `utf-8.def' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: def)
    

A solução eu obtive por sorte. Apenas pra ver o que acontecia resolvi retirar o “-” e funcionou. Espero que evite dores de cabeça para vocês. 



















