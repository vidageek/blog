---
author: Cecilia Fernandes
title: 'Guia Latex - Parte I: O que é e por que usar'
layout: post
tutorial: guia-latex

---
Latex é uma linguagem de marcação de texto, isto é, uma sintaxe na qual você escreve textos já com as indicações de layout, como deve aparecer na página final. A propósito, Latex escreve-se, na verdade, Lateχ – esse último χé o “chi” do alfabeto grego – e a pronúncia é /la<u>te</u>qui/*.

O Latex é uma simplificação do Tex, criado por [Donald Knuth][1] – se você nunca ouviu esse nome, por favor, informe-se. Por sua maior complexidade e suas limitações estilísticas, o Latex surgiu, como uma pré-linguagem de Tex, carregando em si, basicamente, macros que transformam um texto Latex em Tex e daí são compilados para *.dvi.

Mas não é apenas para *.dvi que se pode exportar com o Latex. Sua grande funcionalidade é a possibilidade de ser exportado para diversos formatos. Nativamente nos pacotes Linux para Latex, exporta-se para *.dvi, *.ps, *.pdf e até mesmo *.html.

A linguagem é excelente para textos acadêmicos e artigos em geral, mas também pode ser usada numa grande gama de funções, da construção de um currículo à escrita de partituras – usando uma biblioteca especial.

Neste guia, abordaremos:

*   **O básico:** Como construir documentos simples e estruturados em Latex, quais pacotes utilizar para escrever em português e as marcações simples de texto – como itálico, negrito, listas, etc.
*   **Estruturas complexas:** Construindo tabelas e boxes, utilizando links internos e externos, criando índice e índice remissivo para documentos.
*   **Matematiquês e outros textos técnicos:** O suporte do Latex para fórmulas matemáticas e alguns pacotes para textos técnicos e científicos de outras áreas.
*   **Retoques:** Artifícios para tornar o resultado do Latex mais bonito, agradável de se ler e dicas de editoração para diferentes fins.
*   **Beamer:** Latex em apresentações de slides.
*   Outros pacotes diversos

Para começar, você precisará ter as bibliotecas do Latex instalado e de um editor de texto – recomendo fortemente o Emacs, já que ele tem uma ótima marcação de sintaxe para Latex. Consiga seu compilador de Lateχ…

> **…em Linux:** use seu gerenciador de pacotes para baixar e instalar o pacote “tetex-extra” e suas dependências. Para o Emacs reconhecer corretamente códigos Lateχ, baixe e instale, também, o pacote “auctex”.  
> **Em MacOS:** Mesma instrução que para o Linux, apenas utilize o [Fink][2] para pegar o pacote “latex-make” e, para Emacs, “auctex”.  
> **Em Windows:** Recomendo a utilização do [TexLive][3].

Para os anti-Emacs espalhados pelo mundo, você pode utilizar o editor [TexMaker][4].

Por ora, instale o Latex no seu computador e teste um pouco o editor escolhido, vendo como ele marca o código abaixo:

	\documentclass{article}  
	\usepackage{verbatim}  
	\usepackage[T1]{fontenc}  
	\usepackage[latin1]{inputenc}  
	\usepackage[brazil]{babel}  
	\title{Tutorial de Latex – parte I}  
	\author{VidaGeek.net}

	\begin{document}  
	\section{A seção}  
	\subsection{Utilizando uma subseção}  
	\subsubsection{Usando uma subsubseção:}  
	Uma lista numerada qualquer…  
	\begin{enumerate}  
	\item{Algum ítem}  
	\item{Um outro item}  
	\end{enumerate}

	\end{document}

* Nota sobre a pronúncia de Lateχ: segundo me foi dito recentemente, em grego, o χ no final de uma palavra é suprimido e sua síbala fica tônica, portanto, Lateχ seria lido /laté/ – fica a sua preferência. 

 [1]: http://www-cs-faculty.stanford.edu/~knuth/
 [2]: http://www.finkproject.org/index.php
 [3]: http://www.tug.org/texlive/
 [4]: http://www.xm1math.net/texmaker/





