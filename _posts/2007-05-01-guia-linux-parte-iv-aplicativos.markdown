---
author: convidados
title: 'Guia Linux - Parte IV: Aplicativos'

layout: post
category:
  - Gentoo
  - Linux
tags:
  - Gentoo
  - Linux

---
Continuando com o nosso guia, abordarei agora aplicativos gerais para Linux. Se você seguiu o nosso guia até aqui você deve ter um sistema muito bom rodando, mas muita coisa está faltando. Iremos agora instalar essa ferramentas essenciais para computadores caseiros que precisam de aplicativos de escritório, tratamento de imagens e outros.

**OpenOffice**  
Começando com o famoso **OpenOffice**, que permite realizar a maior parte do que um pacote Office da Microsoft permite. O resto são coisas que você provavelmente não irá usar. Ele permite a criação de **documentos de texto** (cartas por exemplo),** planilhas**, **apresentações de slides **e **banco de dados** (talvez seja melhor usar algo mais robusto). Sua instalação é fácil, mas extremamente demorada (pelo menos umas seis horas), execute **emerge openoffice** e vá correr uma maratona (só tomar um café não demora o suficiente), ou então faça **emerge –bin-package-only openoffice** que instalará binários pré-compilados. Uma dica, antes de instalar configure corretamente a sua variavel LOCALE para ele ter corretor ortográfico e outras coisas adaptadas ao português, mais informações [aqui.][1]

**Latex**  
O** Latex** surgiu a partir do **Tex**, uma ferramenta poderosa de editoração criada por **Donald Knuth**, e tem como objetivo permitir a programação de um texto. Tudo funciona como uma linguagem de programação, você cria o arquivo fonte e compila. O resultado é um arquivo **.dvi** que se parece muito com um **.pdf**. Você pode também compilar para outros formatos como o próprio pdf (**pdflatex**)e o ps (**pslatex**). Um guia muito útil pode ser encontrado [aqui][2](link arrumado como sugerido pelo leitor Luiz Agostinho). O Latex é muito útil para a escrita de texto científicos, principalmente matemática. Existem muitas extensões, uma delas (**Latex Beamer**) permite a **criação de apresentações de slides de forma profissional**. Para instalar execute: **emerge tetex**

**GIMP**  
O **GIMP** é considerado o **Photoshop do Linux** (recebendo até uma modificação para ficar parecido, o [GIMPshop][3]). Ele é um poderoso editor de imagens, mas um tanto quanto obscuro (pelo menos para mim, que não uso nem o Photoshop). Para instalar basta: **emerge gimp**

**Gnuplot**  
O **Gnuplot**, apesar de um pouco complicado, é um excelente **plotador de gráficos 2D e3D**. Ele pode parecer difícil no começo, mas com a prática ele se torna uma ferramenta poderosa. Ele plota não somente funções matemáticas, mas também é capaz de carregar arquivos e plotar os pontos da tabela. Ele permite também o redirecionamento da saída para vários formatos de arquivos. Ele é muito útil para análise de dados experimentais, como análise de algoritmos por exemplo. A instalação, como sempre, é: **emerge gnuplot**

**Acrobat Reader**  
Existem opções open-source ao famoso leitor de arquivos portáveis da **Adobe**, o **Acrobat Reader**, como por exemplo o **Evince** (possivelmente já instalado) e o **Xpdf**. Mas, por outro lado, o Reader é um freeware, e isso significa que você pode usa-lo mas não pode ver como ele trabalha. **Stallman** possivelmente tivesse um surto com isso, mas ele é, no final das contas, um ótimo programa para ler aquivos pdf. Instale com **emerge acroread** e se você colocar no seu **USE** a flag **nsplugin** antes da instalação você poderá abrir os pdfs dentro do seu **Firefox**.

Você usa outros aplicativos interessantes para Linux? Deixe seu comentário e poderemos aborda-lo em outra edição do nosso guia!**  
** 














 [1]: http://vidageek.net/2007/03/19/guia-linux-parte-ii-sistema-basico/ "Guia Linux - Parte II: Sistema Básico"
 [2]: http://www.ctan.org/tex-archive/info/lshort/english/lshort.pdf "The not so short introduction to Latex"
 [3]: http://pt.wikipedia.org/wiki/GIMPshop "GIMPshop na Wikipedia"





