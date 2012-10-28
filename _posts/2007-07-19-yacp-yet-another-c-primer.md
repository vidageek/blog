---
author: Jonas Abreu
title: YACP (Yet Another C Primer)
excerpt:
layout: post
category:
  - C
  - Dicas
  - Programacao
  - Tutoriais
tags:
  - C
  - Dicas
  - emacs
  - gcc
  - gdb
  - gvim
  - Programacao
  - Tutoriais
  - vim
post_format: [ ]
---
Este é o primeiro post de uma série que tem por objetivo ensinar programação em C a alguém que já tem noção do que é programação, mas nunca programou. Programadores menos experientes também encontrarão muito material útil aqui.

Esta série está dividida em três partes:

1.  Apresentação e instalação de compiladores, bons editores de texto e um depurador.
2.  Estrutura da linguagem de programação C.
3.  Bibliotecas do padrão ANSI C (ISO C 89) e ISO C 99.

A primeira parte, irá mostrar rapidamente como instalar o compilador GCC, os editores de texto GVim e Emacs e o depurador GDB.

A segunda parte tratará de como a sintaxe de C é estruturada e das palavras reservadas a linguagem. Introduzirá o conceito de variáveis, a estrutura de controle de fluxo de um programa, operações com os temidos ponteiros (que são bem mais simples de usar do que as pessoas costumam pensar), manipulação de bits, funções e preprocessamento.

A terceira parte vai funcionar como um guia de referência para as funções dos padrões ANSI e ISO C 99. Assim você poderá saber qual suporte C oferece para seus programadores.

### **Instalando o GCC**

O GCC é um dos melhores compiladores da linguagem C que existe. Boa parte do que foi adicionado ao padrão ISO C 99 eram extensões apenas do GCC. Além disso ele é OpenSource. Nos exemplos vou usar o GCC, mas qualquer compilador ISO C 99 deve compilar os exemplos.

Instalar o GCC em Linux é bem simples. Provavelmente você já possui ele instalado (sei apenas de uma versão do Ubuntu que não vinha com o GCC por padrão). Para checar, abra um terminal e digite ‘gcc –version’. Ele irá informar qual a versão do compilador. Se a shell devolver alguma mensagem de erro, instale o GCC com o seu gerenciador de pacotes (como são muitos, não vou entrar em detalhes).

Em MacOS X, você deverá se cadastrar na Apple Developer Connection (ADC) e baixar o pacote xCode. O xCode vai instalar dezenas de programas, bibliotecas e frameworks em seu computador. Possui muita coisa realmente útil e muita coisa inútil. Ainda bem que você pode escolher o que instalar.

Em Windows, a melhor opção é instalar o cygwin, que é um emulador de Linux para Windows. Muito bom.

### **Instalando o depurador**

O depurador que uso é o GDB (GNU Debugger). Excelente depurador, poderá ajudar muito a detectar algum erro em seus programas.  
Em Linux ele já deve estar instalado, caso contrário siga o mesmo procedimento feito para o GCC.  
Em MacOS X, o xCode já instala o GDB.  
Em Windows, o cygwin também já traz o GDB.

### **Instalando um editor de textos**

Em Linux e MacOS X, o vim vem instalado por padrão. Para instalar o Gvim use seu gerenciador de pacotes preferido ou acesse o [site do Vim][1] e faça o download.

Para instalar em Windows, acesse o [site do Vim][1] e pegue o instalador.

Além do Vim, existe um outro bom editor chamado Emacs, criado por Richard Stallman.

Para instalar o Emacs no Linux basta usar o seu gerenciador de pacotes (Portage, Synaptic, etc…) e escolher a opção de instalar o Emacs. Caso sua distribuição não tenha um gerenciador de pacotes, entre no [site do Emacs][2] e faça o download.

Para instalar no Windows, acesse o [site do Emacs][3] e pegue o pacote de arquivos pré-compilados. Ele não contém um instalador, mas basta extraí-lo (ele é um .zip) e executar o bin/runemacs.exe, você pode deixar a pasta em qualquer lugar mas é interessante deixar em um lugar fácil de lembrar (C:\ ou Arquivos de Programas). 
**Posts Relacionados:** 
*   No related posts












 [1]: http://www.vim.org
 [2]: http://www.gnu.org/software/emacs/ "Site do Emacs"
 [3]: http://www.gnu.org/software/emacs/windows/faq2.html#where-precompiled "Site do Emacs"





