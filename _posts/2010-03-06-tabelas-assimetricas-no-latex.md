---
author: convidados
title: Tabelas assimétricas no LaTeX
excerpt:
layout: post
category:
  - Dicas
  - Latex
tags:
  - Latex
  - multicolumn
  - multirow
  - span
  - tabela assimétrica
post_format: [ ]
---
O post de hoje tem, novamente, a colaboração do nosso leitor Cacio Gazola. Mas desta vez foi ele que escreveu a base. Segue o texto adaptado:

> Eu estava precisando fazer uma tabela assimétrica (onde uma célula da tabela ocupa várias colunas na mesma linha, sem afetar as outras linhas) e pesquisando nos blogs e fóruns a fora, nada encontrei. Apenas o conteúdo basico sobre tabela. 
> 
> Até que encontrei, no wiki do LaTeX, uma dica interessante: o uso do \multicolumn {}{}{} para fazer o trabalho. Achei interessante pois em todos os tutoriais só mostram a aplicação do \multicolumn para a criação de texto em múltiplas colunas.
> 
> Dentro do ambiente \begin{table} e do \begin{array} funciona perfeitamente, e deve ter os seguintes argumentos: \multicolumn{número de colunas}{disposição do texto}{texto da célula}. As disposições possíveis são as mesmas disponíveis para tabela e array (l, c, r). Também suporta o caractere | para criar a borda interna da grade da tabela (por exemplo: {c|}). Com isso é possivel mudar a disposição do texto dentro desta célula, independente do indicado em \begin{table} por exemplo.
> 
> Segue um exemplo:  
> `\begin{displaymath}<br />
\begin{array}{rrrrrrr}<br />
(1\times 2^3) &#038; + &#038; (1\times 2^2) &#038; + &#038; (0\times 2^1) &#038; + &#038; (0\times 2^0) \\<br />
\Downarrow &#038; &#038;\Downarrow &#038; &#038;\Downarrow &#038; &#038; \Downarrow \\<br />
8_d &#038; + &#038; 4_d &#038; + &#038; 0_d &#038; + &#038; 0_d \\<br />
\hline<br />
\multicolumn{7}{c}{\textcolor{red}{12_d}}<br />
\end{array}<br />
\end{displaymath}`
> 
> ![Tabela][1]
> 
> Observe que todas as células devem ficar alinhadas a direita, menos a última que vai ocupar toda a linha e será centralizada.
> 
> Pois bem, aí me bateu um dúvida: se existe um multicolumn será que existe um multirow? E não é que existe!?
> 
> Ainda não cheguei a usar, mas encontrei uma página com as dicas de como fazê-lo:  
> <http://andrewjpage.com/index.php?/archives/43-Multirow-and-multicolumn-spanning-with-latex-tables.html>
> 
> Assim como o multicolumn, é necessário adicionar o pacote multirow no preâmbulo. Os dois juntos dão liberdade para criar tabelas totalmente assimétricas.

**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2010/03/tabela1.jpg "Tabela"
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [5]: http://twitter.com/blogvidageek

