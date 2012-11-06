---
author: Jonas Abreu
title: Como remover os malditos .svn

layout: post
category:
  - Dicas
  - Linux
  - Programacao
tags:
  - find
  - metadata
  - rm
  - svn
  - xargs

---
Uma das coisas que mais me atrapalhava com o svn era quando eu queria gerar um snapshot do que tinha no repositório, mas sem os .svn .

Um one-liner bash que faz isso:

    
    	find . -iname .svn | xargs rm -fr
    

Explicação:

1.  **find . -iname .svn**: Encontra todos os arquivos ou diretórios que se chamem .svn 
2.  **xargs rm -fr**: O xargs é um programa que executa o que vier depois dele pra cada linha que ele receber como entrada. Por isso apaga todos os .svn. 




















