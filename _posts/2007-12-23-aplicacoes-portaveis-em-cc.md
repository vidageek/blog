---
author: Luiz
title: Aplicações portáveis em C/C++

layout: post
category:
  - C
  - Dicas
  - Linux
  - Programacao
tags:
  - C
  - Dicas
  - Linux
  - Programacao
post_format: [ ]
---
Um requisito cada vez mais importante hoje em dia para uma aplicação é a portabilidade. Com cada vez mais sistemas diferentes no mercado, com configurações e necessidades específicas, fica mais difícil atingir esse objetivo.

Em Java, essa preocupação não é necessária, já que a máquina virtual é sempre a mesma (na verdade, quase sempre… algumas têm funcionalidades a mais). Mas em linguagens compiladas para código de máquina, como C e C++, a tarefa fica mais difícil.

Felizmente há diversas ferramentas e truques que podem ser utilizados para atingir esse objetivo mais facilmente. É possível fazer aplicações portáveis em C e C++ sem o uso dessas ferramentas, mas é mais fácil utilizarmos o que já está pronto. As duas principais ferramentas que fazem esse papel são o [autoconf][1] e o [CMake][2]. Não tenho muita experiência com o autoconf, mas já utilizei o CMake numa aplicação que utilizava as bibliotecas [GTK+][3] (Gimp ToolKit) e [VTK][4] (Visualization ToolKit). Ambas as bibliotecas estão disponíveis para mais de um sistema operacional, e meu objetivo era fazer com que meu programa funcionasse tanto em Windows como em Linux. Utilizando o CMake, não foi necessária nenhuma alteração na aplicação para fazê-la funcionar em ambos os sistemas.

A função dessas ferramentas é assegurar que as dependências do seu programa (bibliotecas, formato de dados) estão satisfeitas e gerar instruções para uma ferramenta de compilação (Make, Visual Studio) saber como chamar o compilador para compilar seu programa, afinal os compiladores mudam de sistema para sistema, e mesmo as opções de compilação de um mesmo compilador mudam.

Então, se você for escrever uma aplicação um pouco mais complexa do que um “Hello world”, vale a pena investir um tempinho para escrever um arquivo de configuração para usar uma dessas ferramentas! 

*   No related posts












 [1]: http://www.gnu.org/software/autoconf
 [2]: http://www.cmake.org
 [3]: http://www.gtk.org
 [4]: http://www.vtk.org





