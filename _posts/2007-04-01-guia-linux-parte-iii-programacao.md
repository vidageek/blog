---
author: convidados
title: 'Guia Linux - Parte III: Programação'

layout: post
category:
  - Gentoo
  - Linux
  - OpenSource
  - Programacao
  - Tutoriais
tags:
  - Gentoo
  - Linux
  - OpenSource
  - Programacao
  - Tutoriais
post_format: [ ]
---
Nessa parte de nossa guia vamos abordar um assunto específico, mas muito interessante: Linguagens de Programação. O intuito desse guia não é abordar como se tornar um **programador** (para isso existem os cursos **Técnicos e Tecnológicos em Informática**) e nem um **Computólog**o (para isso existe o** Bacharelado em Ciência da Computação**), você verá como instalar algumas linguagens no Gentoo.

Irei abordar também ferramentas úteis ao se utilizar estas linguagens, como programas que facilitam o desenvolvimento (as populares IDEs) e outros utilitários.

**Java**  
** Java **é uma linguagem robusta e poderosa, que pode ser utilizada em uma grande gama de finalidades. Com ela podemos criar não somente aplicativos portaveis para desktop, mas também applets, páginas dinâmicas, camadas para servidores, aplicações para celulares e muitas outras coisas.  
Antes de efetuar a instalação você pode mudar sua **USE** flag para adicionar **nsplugin** caso utilize o Firefox ou outro navegador baseado no Netscape. Você deve escolher entre o **JDK** (Java Development Kit) para desenvolvedores ou o **JRE** (Java Runtime Environment) para executar programas.  
Para a instalação existem várias opções:

*   **emerge sun-jre-bin**: binários do JRE da Sun
*   **emerge sun-jdk**: JDK da Sun.
*   Existem outras opções como o JDK e JRE da IBM e do [Blackdown][1], mas com suporte, em geral, só para Java até 1.4.

Eventualmente (por exemplo ao executar **emerge eclipse**), pode ser necessário instalar um JDK mais velho da Sun, o que deverá ser feito manualmente, baixando o pacote e colocando numa pasta específica do portage para que o emerge funcione. Isso se deve a restrições legais que existiam anteriormente, mas que estão sendo extintas com a **migração do Java para o Open-Source**.

**Ruby**  
O **Ruby** é a nova menina dos olhos dos aficcionados por linguagens de script. Ela foi criada no Japão em 1995, mas apenas recentemente ganhou o ocidente. Ela ficou mais conhecida quando uma empresa (a **37signals**) desenvolveu um framework para aplicações web: o **Rails**. Trata-se de uma linguagem, mesmo sem o Rails, muito interessante para a criação de scripts. Ela é completamente orientada a objetos (ao contrário do Java, que tem tipos primitivos), e é capaz de fazer praticamente tudo que outras linguagens de script fazem.  
Sua instalação é bem fácil: **emerge ruby**  
Uma parte posterior desse guia irá tratar de programação volta a web e então abordaremos o Rails.

**R Project**  
O** R** é uma linguagem de programação especializada em **analise estatística**. Ela é muito útil em** Análise Exploratória de Dados** e outras áreas da Computação ligadas diretamente a Estatística como, por exemplo, o **Aprendizado Computacional**.  
Sua instalação também é muito fácil: **emerge r**

**Outras Linguagens:**  
Algumas linguagens essenciais não constam nesse guia por um motivo óbvio, elas provavelmente já estão instaladas. O **gcc** (Gnu C Compiler) já vem instalado na maioria das distribuições (mas não em todas, já vi Ubuntu que não tinha), o **g++** (Compilador de C++) já vem na instalação do Gentoo também. O **Perl** e o **Python**, famosas linguagens de script, normalmente são instaladas nos primeiros emerges que você realiza pois são base para muitas aplicações.

**Framebuffer**  
Começando com algumas ferramentas úteis para os programadores, temos o bom e velho Framebuffer. Ele permite que você veja o seu terminal em uma resolução maior, o que é muito útil para poder ver uma parte maior do código enquanto programa. Sua instalação é razoavelmente fácil, mas você talvez você tenha que recompilar o kernel.  
**Guia de Instalação:** [http://www.gentoo-wiki.com/HOWTO_Framebuffer:Bootsplash:Grubsplash][2]

**Problemas:**

*   O Framebuffer não funcionou usando o parâmetro **vga** no g**rub.conf**, a solução foi fazer **video=vesafb:1024×768-32@85 **

**Emacs  
**O [Emacs][3] é um excelente editor de textos para programadores criado pelo próprio guru do Software Livre **Richard Stallman **em 1976, que oferecem muitas vantagens como coloração de código, contagem de parentêses e tabulação automática. Além disso, ele também executa comandos apropriados para cada tipo de arquivo, como compilar um código em c ou gerar o .dvi de um arquivo latex. Sua instalação é muito simples (**emerge Emacs**), mas a sua utilização nem tanto, pois ele utiliza de atalhos fora dos padrões que estamos acostumados.

**Subversion  
**O [Subversion][4] é uma ferramenta indispensável para projetos desenvolvidos em grupo. Ele permite que os desenvolvedores editem os módulos sem haver a possibilidade de alguém estragar algo novo com uma sobrescrita, e caso haja algum conflito entre as atualizações ele informa e espera uma escolha. Além disso, ele tem um controle de versões, que permite desfazer as alterações realizadas no código. Ele também é essencial para pegar as versões mais recentes de alguns projetos (que podem ser instáveis). Para instalar basta executar **emerge subversion.**

**GDB**  
O [GDB][5](Gnu Debugger) é extremamente útil, pois é um poderoso **debbuger para Ada, C, C++, Objective-C, Pascal** entre outras linguagens. Além do que estamos acostumados em um debugger (breakpoints, watchs, etc) ele permite coisas incríveis como, por exemplo, chamar uma função do próprio programa durante a execução, alterar o valor de variáveis, ver o valor de expressões inteiras que podem incluir chamadas de funções. A instalação (como na maioria das instalações do Gentoo) é **emerge gdb**. Aconselho o uso dessa [folha de referências][6].

**Netbeans  
**O **Netbeans** é um **IDE** criada pela Sun para o desenvolvimento em Java. Ele é o concorrente direto do Eclipse que muitos adoram. Eu, particularmente, simpatizei mais com essa IDE que agora, em sua versão 5.5, está muito poderosa.  
Infelizmente no portage a versão disponível é a 3.6-r1, uma versão bem antiga e pouco poderosa. Por isso eu sugiro a instalação manual. No site [http://www.netbeans.org/][7] é possivel encontrar um instalador para Linux. Mas você precisará da [bc][8] (basic calculator, uma calculadora gnu poderosa ) para instalação, portanto execute um **emerge bc**. Para instalar, estando como **root** e de preferência no **X**, execute **chmod +x <arquivo>** e então **./<arquivo>** onde <arquivo> é o nome do pacote de instalação. 
**Posts Relacionados:** 
*   No related posts












 [1]: http://en.wikipedia.org/wiki/Blackdown_Java "Wikipedia: Blackdown"
 [2]: http://www.gentoo-wiki.com/HOWTO_Framebuffer:Bootsplash:Grubsplash "Gentoo Wiki: How To Framebuffer"
 [3]: http://www.gnu.org/software/emacs/ "Site Oficial Emacs"
 [4]: http://subversion.tigris.org/ "Site Oficial Subversion"
 [5]: http://sourceware.org/gdb/ "Site Oficial GDB"
 [6]: http://www.cs.dal.ca/studentservices/refcards/gdbref.pdf "GDB Quick Reference"
 [7]: http://www.netbeans.org/ "Site Oficial NetBeans"
 [8]: http://en.wikipedia.org/wiki/Bc_%28Unix%29 "bc na Wikipedia"





