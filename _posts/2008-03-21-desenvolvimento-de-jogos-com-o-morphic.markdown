---
author: Luiz
title: Desenvolvimento de jogos com o Morphic
layout: post

---
Há muito tempo vejo propagandas de ferramentas de desenvolvimento de jogos que se propõem a serem super fáceis de usar, permitindo o desenvolvimento de um jogo simples em pouco tempo. Já experimentei uma ou outra, e nenhum é tão fácil assim de usar, fora que muitas são pagas. Mas, recentemente, descobri um arcabouço para desenvolvimento não só de jogos, mas de interfaces gráficas em geral, baseado em [Smalltalk][1]. Esse arcabouço, chamado Morphic, vem de graça com o [Squeak][2], um ambiente open-source de desenvolvimento e interação em Smalltalk.



Por ser em Smalltalk, tudo são objetos no Morphic, inclusive a moldura das janelas. Você pode inspecionar, modificar, deletar, fazer o que quiser com os objetos (tanto da interface gráfica como com qualquer outro do ambiente, inclusive o SmallInteger). Para criar um novo objeto do Morphic, você pode tanto importar um desenho como utilizar um objeto já pronto ou simplesmente desenhá-lo dentro do Squeak! Depois disso, todo o processo de programação do objeto pode ser gráfico, não sendo necessário escrever código para fazê-lo funcionar. A programação é feita de modo gráfico, onde os objetos e métodos são representados por Tiles (tijolos) gráficos. É simplesmente uma representação gráfica dos tijolos que nós, programadores, estamos acostumados a usar, que são as variáveis, funções etc.

Se você ficou curioso em conhecer mais sobre o Morphic, recomendo a leitura do texto sobre Smalltalk na Wikipédia (link acima), além de recomendar esse ótimo screencast feito pelo Hugo Corbucci (necessita de Java para ser assistido):

[Exemplo de Morphic no Squeak][3] 














 [1]: http://pt.wikipedia.org/wiki/Smalltalk
 [2]: http://www.squeak.org/
 [3]: http://www.screencast-o-matic.com/watch/cjeFrOV2c





