---
author: Cecilia Fernandes
title: 'Guia Latex - Parte III: Estruturando e marcando o texto'
excerpt:
layout: post
category:
  - Dicas
  - Latex
  - Tutoriais
tags:
  - Dicas
  - Latex
  - Tutoriais
post_format: [ ]
---
Após um período de recesso, o Guia Latex segue. Dessa vez, veremos marcação de texto básica e as maneiras mais comuns e simples de se estruturar uma página, com seções e subseções, listas e, por fim, tabelas.

## Marcação de texto

Em LaTeX, é possível fazer todas as marcações de texto com as quais vocês está acostumado.

| **Negrito:**   | \textbf{termo em negrito}                                                     |
||
| **Itálico:**   | \textit{termo em itálico}ou similar: \emph{termo enfatizado}                  |
| **Monospace:** | \texttt{termo em monospace} (letra de máquina de escrever)                    |
| **Serifado:**  | \textsf{termo em letras serifadas}                                            |
| **Maiúsculas** | \textsc{termo em *SmallCaps*} (letras maiúsculas, diferenciadas pelo tamanho) |

Também podemos alterar o tamanho da fonte. Algumas das possibilidades de tamanho são:

| **Muito pequena:** | \tiny       |
||
| **Pequena:**       | \small      |
| **Normal:**        | \normalsize |
| **Grande:**        | \Large      |
| **Muito Grande:**  | \LARGE      |
| **A maior:**       | \Huge       |

## Estruturando o texto

O LaTeX é uma excelente ferramenta para criar textos bem estruturados e confortáveis de se ler. Para facilitar esse processo, dispomos de alguns comandos:

| **Seção:**       | \section{Nome da seção}                      |
||
| **Subseção:**    | \subsection{Nome da subseção}                |
| **Subsubseção:** | \subsubsection{Nome da subseção da subseção} |

### Listas

Ainda, é bastante útil saber fazer listas. As listas abrem um ambiente próprio que contém e sabe entender o comando \item. Este, por sua vez, recebe o texto de um ítem da lista.

Para fazer uma lista com os pontos de marcação padrão (as bolinhas) use:

\begin{itemize}  
\item{Um ítem}  
\item{Outro ítem}  
…  
\item{Último ítem}  
\end{itemize}

Já para criar uma lista numerada, usamos o ambiente *enumerate*:

\begin{enumerate}  
\item{Primeiro ítem}  
\item{Segundo ítem}  
…  
\item{N-ésimo ítem}  
\end{enumerate}

### Tabelas

Tabelas são velhas conhecidas e tidas como problemáticas por usuários mais antigos de Tex e LaTeX. A razão da má fama é proveniente do ambiente *table*, que é um corpo flutuante. Isso significa que, se não houver espaço para uma tabela do tipo *table* na página, ela não hesita em passar o texto seguinte para preencher o espaço em branco e se posicionar alguns parágrafos abaixo.

Se isso não lhe parece terrível, é porque você nunca teve esse problema. Seu texto fica extremamente confuso quando uma tabela de referência vai parar 3 parágrafos abaixo, onde ela julgou que cabe.

Para não ter esse tipo de inconveniente, foi criado, para LaTeX, um ambiente novo não-flutuante chamado *tabular*. A seguir, um exemplo de como fazer uma tabela nesse ambiente:

\begin{tabular}[opções de alinhamento]{| alinhamento da primeira coluna | alinhamento da segunda coluna |}  
\hline  
conteúdo da 1a. linha, 1a. coluna & conteúdo da 1a. linha, 2a. coluna \\  
\hline  
conteúdo da 2a. linha, 2a. coluna & conteúdo da 2a. linha, 2a. coluna \\  
\hline  
…  
conteúdo da Na. linha, 1a. coluna & conteúdo da Na. linha, 2a. coluna \\  
\hline  
\end{tabular}

As opções de alinhamento são quatro:

| **l (L minúsculo)** | Alinhamento à esquerda                              |
||
| **c **              | Alinhamento centralizado                            |
| **r **              | Alinhamento à direita                               |
| **p{2.7cm}**        | Justificado com tamanho de célula indicado entre {} |

As barras verticais indicam as linhas verticais da tabela. Mas **atenção**: elas são necessárias no começo e no fim da definição das colunas. Se você não colocá-las ali, sua tabela não vai ter as bordas laterais exteriores.

Similarmente, as linhas que recebem somente *\hline* servem para fazer as linhas horizontais da tabela. Assim, é importante colocá-las a cada vez que você desce para a próxima linha e, se quiser as bordas inferior e superior externas, antes da primeira linha e depois da última.

Pronto! Agora você já tem todas as ferramentas que precisa para escrever 90% dos textos com os quais você vai se deparar. Experimente tranformar seu último texto escolar ou relatório do trabalho em LaTeX e veja a qualidade da saída em .pdf.

Na próxima parte desse tutorial, veremos como colocar imagens em latex, importando ou construindo-as programativamente, direto em LaTeX. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


