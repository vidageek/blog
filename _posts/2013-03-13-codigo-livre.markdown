---
author: Jonas Abreu
title: Código Livre
layout: post
---



**TL;DR**:

Você precisa colocar uma licença em todo o conteúdo que produz, se quer que outras pessoas possam modificar ou usar 
além dos [casos pré-definidos no capítulo IV da lei 9610][2].

## Discussão

Acompanhei [uma discussão bem interessante][1]. Dêem uma lida antes de continuar o post :)

Existem vários pontos a serem explorados nessa discussão:

## Porquê eu preciso de uma licensa para o meu software (mesmo que seja apenas uma linha de código)?

Vou me restringir ao pouco da legislação brasileira que conheço.

A [lei federal 9610][2] estabelece muito do que está protegido por direitos autorais no Brasil. 
A [lei federal 9609][3] fala especificamente sobre programas de computador.

Basicamente, tudo que é produzido automaticamente tem um autor. Esse autor, automaticamente tem
direitos sobre a obra.

Da lei 9609 (ênfase adicionada por mim):

> Fica assegurada a **tutela dos direitos relativos a programa de computador pelo prazo de cinqüenta anos**,
> contados a partir de 1º de janeiro do ano subseqüente ao da sua publicação ou, na ausência desta, da sua criação.

> A proteção aos direitos de que trata esta Lei **independe de registro**.

Portanto, software produzido (independente do seu objetivo) está protegido por 50 anos mesmo que não seja feito
registro algum.

Os direitos de um autor, estão determinados na lei 9610. Alguns deles (ênfase adicionada por mim):

> V - o de **modificar a obra, antes ou depois de utilizada**;
> VI - o de **retirar de circulação a obra** ou de **suspender qualquer forma de utilização já autorizada**,
> quando a circulação ou utilização implicarem afronta à sua reputação e imagem;

Notem que esses direitos são exclusivos. Pertencem apenas ao autor e mais ninguém. A não ser que o autor ceda 
esses direitos (previsto no capítulo V da lei 9610), outras pessoas não podem fazer muita coisa.

Então se você quer que outras pessoas possam colaborar ou até mesmo utilizar o seu código, você precisa ceder
esses direitos. Seja simplesmente informando que qualquer pessoa pode utilizar ou colocando uma licença
(versão preferível, uma vez que deixa claro em quais termos pode ser utilizado).

Na discussão em questão, a frase do [@felipebastosweb][4] 

> Todo o conteúdo é 100% livre, em todos os aspectos. Não é software, não é projeto, é apenas um depósito de materiais (entrada e saída) dos treinamentos.

não é o suficiente, porque ele não é o autor do código ou texto presente no repositório.

Inclusive, todas as citações que estou fazendo aqui só são permidas porque a lei 9610 estabelece que:

> a citação em livros, jornais, revistas ou qualquer outro meio de comunicação, de passagens de qualquer obra, 
> para fins de estudo, crítica ou polêmica, na medida justificada para o fim a atingir, indicando-se o nome do 
> autor e a origem da obra

não constitui ofensa aos direitos autorais (artigo 46).

## Preciso colocar licença em código produzido em um Dojo?

Em geral as pessoas vão dizer que não. O código não tem como ser aproveitado em produção, então não faz sentido.

Eu discordo. Um aproveitamento interessante seria, em um treinamento, apresentar várias formas de solução de um 
problema de dojo. Outra, seria utilizar respostas de exercícios de dojo para treinar um algoritmo de medição de
performance com base em pequenos trechos de código (e não se enganem, isso é possível).

Portanto, seria bem interessante para que outras pessoas já pudessem facilmente saber se podem ou não usar. É 
realmente muito chato ter que ir atrás dos criadores para pedir autorização de uso.

## Não é código. Preciso de uma licença?

Se você quer que outros utilizem ou contribuam, também precisa. Nada é livre por padrão. A liberdade é algo concedido
pelo autor. 

Isso inclusive é algo que notei no [Games][5]. Toda a parte dos textos das explicações não estão sob licença
alguma. Terei que encontrar todos os que contribuíram para pedir autorização para colocar o conteúdo sob 
[Creative Commons][6].

## O projeto em questão precisa de uma licença?

Sim. O objetivo claro é que seja construído de forma colaborativa. Existem [trechos][7] de [código][8]. Existem outros
trechos de produção inédita que não são código (como o [README][9]).

A única forma de garantir que outras pessoas possam colaborar é cedendo esse direito à elas (caso contrário elas podem
ser processadas ou não vão poder dizer nada se o código for utilizado de uma forma que vá contra o que acreditam, como
se for eventualmente fechado pelo autor).

A maioria dos programadores que se dedicam à OpenSource que eu conheço, antes de 
mais nada, verificam a licença para ver se faz sentido ou não contribuir com o projeto. Caso ela não exista, no máximo 
vão abrir uma issue pedindo que a licença seja adicionada (como o [Roberto Rodrigues fez nesse projeto][1]).


[1]: https://github.com/ThamaraHessel/DojoOnline/issues/13
[2]: http://www.planalto.gov.br/ccivil_03/leis/L9610.htm
[3]: http://www.planalto.gov.br/ccivil_03/leis/L9609.htm
[4]: https://github.com/ThamaraHessel/DojoOnline/issues/13#issuecomment-14743876
[5]: https://github.com/vidageek/games/issues/263
[6]: http://creativecommons.org/
[7]: https://github.com/ThamaraHessel/DojoOnline/blob/master/tests/PHPUnit/DummyTest.php
[8]: https://github.com/ThamaraHessel/DojoOnline/blob/master/src/bootstrap.php
[9]: https://github.com/ThamaraHessel/DojoOnline/blob/master/README.md
