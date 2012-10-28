---
author: Luiz
title: Configuração de caminhos no LaTeX
excerpt:
layout: post
category:
  - Latex
tags:
  - configuração
  - kpathsea
  - Latex
  - path
  - tetex
  - texconfig
  - texlive
post_format: [ ]
---
Um de nossos leitores, o Cacio Gazola, perguntou-nos recentemente como o LaTeX sabe onde procurar os pacotes, fontes e configurações. Eu não sabia, mas fui investigar. Descobri, achei interessante e resolvi compartilhar aqui.

Os recursos extras da maioria das distribuições LaTeX (teTeX, TeX Live, fpTeX e miktex) ficam armazenados segundo um padrão criado pelo [TeX Users Group][1]. Esse padrão define uma [estrutura de subdiretórios][2] para agrupar cada tipo de recurso. As fontes de uma distribuição, por exemplo, devem ficar num subdiretório fonts/<tipo>/<origem>/<nome>/.

Mas isso ainda não especifica o caminho completo: falta saber dentro de qual diretório existe essa estrutura. Então como o LaTeX sabe onde fica essa estrutura de diretórios? Em tempo de compilação, define-se um diretório-raiz principal para a distribuição. É nesse diretório que vão ficar os pacotes e fontes padrão da distribuição, bem como os arquivos de configuração.

Mas você também pode criar um diretório-raiz seu, seguindo essa estrutura e com seus pacotes, e configurar o LaTeX para procurar pacotes nele. Como? Bom, isso depende de qual distribuição LaTeX você está usando e também de como ela foi compilada. Mas você pode descobrir onde ficam os arquivos de configuração principais da sua distribuição com o comando ‘texconfig conf’. A saída dele mostra as variáveis de configuração do seu ambiente LaTeX, inclusive a variável TEXMF, que contém os caminhos para todos os diretórios-raiz de pacotes LaTeX no seu sistema. É essa variável que você deve alterar, incluindo o caminho para seu diretório.

Com tantos diretórios e subdiretórios, e ainda a possibilidade de pacotes em vários lugares diferentes, como o LaTeX encontra os pacotes? Aí entra um programa chamado kpathsea. Ele cria um índice de todos os pacotes instalados. O LaTeX, na hora de processar um documento, chama esse programa para descobrir onde estão os arquivos de cada pacote referenciado pelo documento (pelos comandos \usepackage). Para saber mais sobre esse programa, use o comando ‘texdoc kpathsea’. Lá o autor do programa também conta a história do surgimento do kpathsea. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://www.tug.org
 [2]: http://www.tug.org/texinfohtml/tds.html#Top_002dlevel-directories
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/
