---
author: Cecilia Fernandes
title: 'Guia Latex - Parte IV: Estética (imagens e coloração)'
layout: post

---
Continuando o Guia Latex, vamos aprender a colorir e colocar imagens em documentos LaTeX.

### Coloração

Começaremos pela coloração, já que essa é uma parte muito mais simples e já acrescenta um grande diferencial ao texto.

Para podermos usar o pacote com as cores, precisamos importá-lo. Usaremos para texto, o seguinte pacote:

\usepackage[pdftex]{color,graphicx}

E para as tabelas…  
\usepackage{colortbl}  
\usepackage[table]{xcolor}

Excelente. Com esses pacotes à disposição, já podemos usar o comando para colorir o texto:

\textcolor{**cor**}{texto a ser colorido}, onde a variável **cor** é uma cor escrita em inglês.

| red    | blue   |
||
| cyan   | yellow |
| orange | gray   |
| teal   | green  |

### Colocando imagens

Muitos tutoriais de LaTeX passam a sensação de que toda imagem tem que estar dentro de um ambiente “figure”. Vamos deixar bem claro, logo de cara, que esse é apenas um *environment* que favorece colocar imagens, em uso geral – podemos colocar legendas facilmente nele.

Para usarmos imagens, precisamos dos pacotes que lidam com elas:  
\usepackage{graphicx}

E, no mais, de apenas um simples comando:

\includegraphics[opções]{imagem.png}

As opções são quatro e podem ser usadas conjuntamente, separadas por vírgulas (e não espaços):

*   width: corresponde à largura;
*   height: a altura da sua imagem;
*   scale: proporção do tamanho real da imagem.
*   angle: ângulo de rotação da imagem (sentido anti-horário);

O formato da imagem pode ser jpg, png, pdf e algumas outras menos comuns. Outros pacotes, como o *graphics*, têm suporte a outros formatos.

**Ambiente figure**

Como mencionei mais cedo, o modo mais comum de vermos imagens apresentadas em LaTeX é num ambiente *figure*. Por que isso acontece?

Esse ambiente procura o melhor lugar para se encaixar numa página, flutuando texto para cima ou para baixo conforme melhor disposição, seguindo, claro, uma heurística própria que infelizmente eu desconheço. Figure também possui uma tag própria de legenda, chamada *caption*.

\begin{figure}  
\includegraphics[width=0.5\textwidth]{imagem.jpg}  
\caption{Minha imagem em latex}  
\end{figure}

Com isso, você já é capaz de tratar figuras em LaTeX e colorir seu texto. Se restou alguma dúvida sobre esse assunto, incentivo perguntas – muito foi deixado de lado nesse breve tutorial. Divirtam-se! 



















