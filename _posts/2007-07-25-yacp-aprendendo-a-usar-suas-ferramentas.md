---
author: Jonas Abreu
title: 'YACP - Aprendendo a usar suas ferramentas'
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
  - Programacao
  - Tutoriais
post_format: [ ]
---
Agora que você já instalou seu compilador, editor de texto favorito e depurador, nada como algumas dicas de como usá-los.

### **Usando o GCC**

Para compilar um programa, abra um terminal (Linux: [xgk]term, rxvt, etc…; MacOS X: Terminal, DashBoard Shell, etc…; Windows: cygwin). No terminal digite a seguinte linha:

gcc -Wall -pedantic -std=c99 -g seu\_arquivo.c -o arquivo\_de_saida

Lembre de trocar seu\_arquivo.c pelo arquivo que você quer compilar e arquivo\_de_saida pelo nome que você quer dar para o seu executável.

A flag Wall serve para que o compilador gere o maior número possível de avisos de coisas que podem estar erradas no seu programa. Std=c99 é para ele compilar usando ISO C 99 como padrão e pedantic é para ele forçar o padrão de compilação (se não usar, ele pode deixar passar algum código que não seja ISO C 99). G é para que ele gere marcações para o depurador, facilitando o processo de depuração mais tarde.

### **Rodando seu programa**

Em Linux, Windows e MacOS X, digite:

./nome\_do\_seu_programa

### **Usando o GDB**

Para rodar o GDB, digite:

gdb nome\_do\_seu_programa

O GDB possui diversos comandos internos:

*   r – Roda o seu programa dentro do gdb
*   b [nome\_funcao|linha do programa] – Pausa a execução do programa (breakpoint) quando a função nome\_função for chamada ou quando o programa for executar o comando que está na linha indicada
*   n – Executa a próxima linha do seu programa
*   c – Continua a execução até que um breakpoint seja atingido

Existem vários outros mas esses devem ser os mais usados.

### **Usando o GVim**

O Vim possui vários modos de utilização. Vamos nos focar no modo de comando (padrão) e de inserção. No modo de comando não aparece nada escrito no canto inferior esquerdo da tela (a não ser mensagens de erro em vermelho. Você vai notar.) Neste modo é possível salvar seu arquivo, abrir um novo, fechar o Vim, etc.  
Aqui vão alguns dos comandos mais usados:

*   :sav nome\_arquivo – Salva o arquivo atual em nome\_arquivo
*   :w – Escreve o arquivo atual
*   :q – Fecha o Vim
*   :x – Escreve o arquivo e fecha o Vim
*   :e nome\_arquivo – Abre o arquivo nome\_arquivo (cria um novo se não existir arquivo com o nome
*   a – Muda para o modo de inserção (não tem ‘:’ antes do ‘a’)
*   u (no modo de comando) – desfazer
*   :syn on – Ativa o modo de coloração (muito útil quando programando)
*   :set ai – Ativa a autoindentação
*   :set cindent – Ativa o modo de indentação para C
*   :set nu – Coloca numeração nas linhas do seu programa
*   :set ruler – Coloca indicador de linha e coluna de inde o cursor está
*   :set keymap=accents – Se seu teclado não estiver bem configurado, no Vim ele colocará acentos
*   :set noexpandtab (Veja os comentários)

Os últimos 6 comandos podem ser colocados em um arquivo especial chamado .vimrc (_vimrc no Vim para Windows e .vimrc no cygwin). Esse arquivo possui comandos que serão executados sempre que você abrir o Vim/GVim. Assim não é necessário digitá-los toda vez que for programar. Este arquivo costuma se localizar na sua home.

O modo de inserção serve para você modificar o texto do arquivo. Para voltar para o modo de comando aperte Esc.

### **Usando o Emacs**

Já o emacs possui apenas um modo e uso. Inserção. Isso significa que você não precisa fazer nada antes de começar a digitar seu programa. Aqui vão alguns comandos úteis (embora você possa fazer tudo com o menu):

*   ctrl-x+ctrl-f – abre um arquivo
*   ctrl-x+ctrl-s – salva o arquivo
*   ctrl-x+ctrl-c – sai do emacs
*   ctrl-espaço – seleciona texto
*   alt-w – copia texto selecionado
*   ctrl-w – recorta texto selecionado
*   ctrl-y – cola o texto previamente copiado
*   ctrl-_ – desfazer

**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][1] 





**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek
 [5]: http://vidageek.net/dreamhost/