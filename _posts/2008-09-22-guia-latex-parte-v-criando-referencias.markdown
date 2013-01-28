---
author: Cecilia Fernandes
title: 'Guia Latex - Parte V: Criando referências'
layout: post

---
Após passar pelas outras partes desse tutorial, chegamos ao ponto em que gostaríamos de criar links externos ou internos para nossa aplicação e referências bibliográficas.

Começamos essa parte pelos links externos, seguimos com links internos e a criação de índice remissivo e terminamos pelas referências bibliográficas, muito comuns e, de fato, estritamente necessárias em trabalhos acadêmicos.

### Links externos

Para utilizar links externos da mesma forma que usamo-nas em HTML, podemos usar o pacote de referências do LaTeX e a tag simples *href* – bastante similar a HTML, certo?

\usepackage{hyperref}  
% …

\href{url}{texto}

Alternativamente, quando queremos manter o próprio link na página e apenas fazê-lo ser “clicável”, podemos ainda lançar mão da tag *url*, que fica no pacote de mesmo nome:

\usepackage{url}  
% …

\url{http://vidageek.net}

### Links internos

Dentro de documentos do tipo *article*, *book* ou *report* (os três tipos de documento padrão apresentados nessa série), não é preciso declarar pacote algum para usar links internos.

Marcamos uma referência que será chamada mais tarde colocando uma marcação nela, uma etiqueta:

\label{nomeDaEtiqueta}

E, no lugar onde precisamos referenciá-las, podemos fazê-lo de duas formas: indicando a página que contém a *label* ou sua seção.

%…

\ref{nomeDaEtiqueta}  
% referencia para a section da label nomeDaEtiqueta

\pageref{nomeDaEtiqueta}  
% referencia para a página em que a label aparece

Repare que, para que essas referências funcionem, **é preciso rodar pdflatex Duas vezes**. Isso porque na primeira vez, o parser do pdflatex passa apenas registrando as Labels e onde colocar as referências, mas na segunda é que é capaz de saber o número da seção e da página, quando aplicável.

### Índice Remissivo

Para criar o índice remissivo, basta colocarmos marcadores do tipo *glossary* pelo nosso texto e instalar um programinha que se chama “makeindex”. No linux, ele vem junto com o pacote tetex-extra e, no Mac e suponho que no Windows também, vem junto com o TexLive – se você segue nosso tutorial de início, já deve tê-lo instalado.

Assim, vamos direto ao ponto de como usá-lo:

\glossary{ancora no índice remissivo}  
% Marcação da linha para o índice remissivo

Após terminar seu texto, você vai precisar rodar em sequência:

pdflatex arquivo.tex  
makeindex arquivo.idx  
pdflatex arquivo.tex

Novamente explicando o porquê: na primeira vez que usamos o pdflatex, ele agrupa as palavras do glossário (índice remissivo) no arquivo *.idx com as devidas referências. Então, usamos o makeindex para transformar esse *.idx em um adendo LaTeX pro arquivo original e, na segunda passagem do pdflatex, ele finalmente junta as duas informações.

Então, agora, você já sabe colocar links internos, externos e até mesmo gerar seu índice remissívo/glossário de acordo com as necessidades do seu texto. Espero que essa sessão do Guia Latex tenha ajudado e a próxima que virá tratará da parte matemática do LaTeX, parte bastante elegante e apreciada pelos usuários acadêmicos de Latex. 



















