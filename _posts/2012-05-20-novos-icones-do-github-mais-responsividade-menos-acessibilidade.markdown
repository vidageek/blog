---
author: Luiz
title: 'Novos ícones do Github: mais responsividade, menos acessibilidade'
layout: post
---
Recentemente, o [Github][1] lançou uma nova série de ícones para seu site. São ícones em geral muito bonitos e que, em alguns casos, ainda passam informações extras que não eram passadas antes (ou simplesmente não eram percebidas por mim). Por exemplo, os ícones de repositórios públicos são diferentes para repositórios originais ou *forkados*.

Hoje descobri que essa reformulação dos ícones tem um propósito maior do que imaginava. Além de deixar o site mais bonito, o Github queria encontrar um jeito de prover ícones bonitos em qualquer resolução. A solução que eles encontrar foi desenvolver uma fonte cujos caracteres fossem ícones. Leia [o post no blog deles (em inglês)][2] para entender melhor.

É uma solução bem interessante para o problema de servir “imagens” em múltiplas resoluções. Imagens nos formatos tradicionais, como PNG e JPG, são armazenadas pixel a pixel. Assim, se você tentar mostrar essa imagem num tamanho maior do que o que foi usado para gravá-la, ela ficará cheia de quadriculados. Por isso, imagens nesses formatos são problemáticas quando queremos fazer uma página que funcione bem tanto para telas com baixa resolução como para telas com alta resolução.

Se usarmos imagens de alta resolução, teremos uma imagem muito em ambas as telas. Entretanto, imagens de alta resolução são grandes e, por isso, deixam o carregamento da página mais lento tanto por causa da conexão como por causa do processamento. Assim, para telas de resolução menor, encontradas principalmente nos smartphones, o ideal seria servir uma imagem menor para economizar banda e processamento. Mas, até o momento, não existe um jeito padrão de fazer isso com HTML puro; [ainda se discute muito][3] sobre como deve ser uma tag img responsiva, ou seja, que faça o carregamento da imagem de acordo com o tamanho da tela do navegador. Enquanto isso não é padronizado, surgem diversas soluções para tentar contornar esse problema com Javascript ou do lado do servidor, baseando-se no nome do navegador, mas nenhuma delas é 100% garantida.

Para contornar esse problema de escala, podemos também usar imagens vetoriais. Nessas imagens, em vez de armazenarmos os pixels que formam uma imagem, armazenamos as formas geométricas que a compõem: linhas, curvas e preenchimentos de cor. Assim, podemos transformar essas formas em pixels na resolução que quisermos. Essa solução não funciona bem para fotos mas funciona muito bem para ícones e logotipos, por exemplo.

Um dos formatos mais comuns de imagem vetorial é o [SVG][4]. Ele é [bem suportado pelos navegadores][5] (exceto o IE, que só passou a suportá-lo na versão 9). Mas o pessoal do Github inovou ao usar outro formato vetorial: fontes! Isso mesmo: fontes (em geral) são definidas por linhas, curvas e preenchimentos e, por isso, funcionam bem em qualquer resolução.

No entanto, a forma como o Github usou fontes para seus ícones não é muito acessível. A tag img do HTML possui um atributo obrigatório, o alt, que serve para definir um texto alternativo à imagem. Ele é útil quando a imagem não carrega mas, sobretudo, ele é **essencial** para quem não enxerga: leitores de tela usam esse texto para descrever o que é aquela imagem. No caso do Github, um usuário cego não vai saber, por exemplo, onde está o link para fazer logout, pois não há esse texto alternativo ao ícone; ele é um texto para o navegador.

Assim, por mais elegante que seja a solução do Github, ela não é acessível. Neste caso, ícones em SVG parecem ser a solução mais adequada. Mas também é necessário que os navegadores melhorem o suporte a SVG, com melhor desempenho e compatibilidade com CSS3. 














 [1]: http://github.com
 [2]: https://github.com/blog/1106-say-hello-to-octicons
 [3]: http://www.alistapart.com/articles/responsive-images-and-web-standards-at-the-turning-point/
 [4]: http://pt.wikipedia.org/wiki/SVG "Scalable Vector Graphics"
 [5]: http://caniuse.com/#search=svg





