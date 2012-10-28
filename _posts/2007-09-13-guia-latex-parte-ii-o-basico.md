---
author: Cecilia Fernandes
title: 'Guia Latex - Parte II: O Básico'
excerpt:
layout: post
category:
  - Dicas
  - Latex
tags:
  - acentos-em-latex
  - autor
  - babel
  - cabeçalho-em-latex
  - Dicas
  - inputenc
  - Latex
  - package
  - título
post_format: [ ]
---
Agora que você já tem o compilador de Tex e o pré-processador de Latex instalados na sua máquina, vamos dar as ferramentas necessárias para escrever documentos simples em Latex, porém já bonitos.

## \documentclass{tipo}

Antes de começar a escrever seu documento, é necessário informar qual é tipo de documento você vai escrever: um artigo, um livro ou um relatório.

Esses tipos definem vários atributos estilísticos como tamanho da letra, área útil do papel, frente e verso ou só frente, número de colunas, etc… Escolha o que melhor se aplica à sua necessidade e modifique algum desses atributos, se preciso, acrescentando a opção entre colchetes.

As diferenças principais nos atributos de cada um dos tipos de documento em Latex são duas:

| Atributo      | article                               | book           | report         |
||
| **Impressão** | só frente                             | frente e verso | só frente      |
| **Capa**      | Inclusa na primeira  
página do texto | Página de capa | Página de capa |

## \usepackage{pacote}

Agora que já definimos a formatação básica da página, temos que importar alguns pacotes que nos permitem escrever em português. O suporte à grafia brasileira, incluindo acentos e tudo o mais, é dado por um conjunto de pacotes:

*   <u>babel:</u> dá suporte à ortografia de diversas línguas. Use a opção **brazil** para escrever no nosso português.
*   <u>inputenc:</u> adiciona a codificação das letras em ascii para melhor visualização num editor Ascii. Isto é, faz com que você consiga ler as vogais acentuadas com sua forma padrão e não como o Tex as interpreta. Usamos **latin1**

Alternativamente a usar estes pacotes, você pode escrever manualmente os acentos e o cedilha utilizando a sintaxe de Tex:

|       | ~ (til)      | ‘ (agudo)    | ^ (circunflexo) | ` (grave)<\td> |
||
| **a** | \~a ou \~{a} | \’a ou \’{a} | \^a ou \^{a}    | \`a ou \`{a}   |
| **e** | —            | \’e ou \’{e} | \^e ou \^{e}    | —              |
| **i** | —            | \’i ou \’{i} | \^i ou \^{i}    | —              |
| **o** | \~o ou \~{o} | \’o ou \’{o} | \^o ou \^{o}    | —              |
| **a** | —            | \’u ou \’{u} | \^u ou \^{u}    | —              |

E o cedilha, escrevemos assim: **\c{c}**.

## \title e \author

Você pode informar o Título e o Autor do seu texto no código de forma a, sempre que você precisar dessas informações, você pode acessar diretamente usando os comandos **\title** e **\author**. Além disso, quando você quiser que seu texto tenha uma capa, basta usar o comando **\maketitle** e um bloco com nome do texto e autor aparecerão, já centralizados e com tamanhos de letra adequados.

Os comandos são usados da forma mais intuitiva:

**\title{Nome do Texto}  
\author{Cecilia \\ VidaGeek.net}**

Então, até agora sabemos usar o cabeçalho e o que significa o que você escreve nele:  
\documentclass{article}  
\usepackage[T1]{fontenc}  
\usepackage[latin1]{inputenc}  
\usepackage[brazil]{babel}  
\title{Guia Latex II – O Básico}  
\author{VidaGeek}

\begin{document}

Tente escrever texto aqui!  
\end{document} 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek

