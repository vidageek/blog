---
author: Luiz
title: 'Linguagens de programação - Smalltalk'

layout: post
category:
  - Programacao
tags:
  - magma
  - Programacao
  - seaside
  - self
  - smalltalk
  - squeak
post_format: [ ]
---
![Squeak Logo][1]Smalltalk é a linguagem de programação que tornou popular o paradigma de orientação a objetos. Inspirou as linguagens mais populares da atualidade: Java, Ruby, Python, etc. Mais sobre a história do surgimento de Smalltalk pode ser visto na [Wikipedia][2] (o [artigo em inglês][3] é mais completo).

Um dos grandes atrativos da linguagem é a sintaxe, bastante diferente da convencional. Existem três tipos de chamadas de métodos:

*   Simples, sem argumentos: {objeto} {mensagem}
*   Com um argumento, binário: {objeto} {mensagem} {argumento}
*   Com vários argumentos, por seletores: {objeto} {mensagem} {argumento1} {cont. da mensagem} {argumento2} …

Para tornar mais claro o último tipo, é necessário olhar para a declaração de um método que recebe vários argumentos, que é assim:  
`umaMensagemComArgumento: objeto eOutro: arg1 eMaisUm: arg2`  
Os parâmetros ficam intercalados no nome do método. Assim, uma chamada para esse método seria feita assim:  
`destinatario umaMensagemComArgumento: 1 eOutro: 2 eMaisUm: 3`

Outra característica bastante interessante em Smalltalk é que tudo são objetos. Isso faz com que a linguagem não possua if, else, switch, while nem nenhum outro tipo de palavra reservada. Todos esses controles de fluxo são implementados como métodos de objetos Boolean.

Um ponto que é positivo e negativo ao mesmo tempo é o fato de os programas em Smalltalk estarem muito atrelados ao ambiente de desenvolvimento que, por sua vez, é atrelado à máquina virtual. Não é tão simples fazer com que programas Smalltalk executem fora da IDE, que normalmente é o [Squeak][4] (que, aliás, é um ambiente de desenvolvimento bastante interessante e completo).

Existem diversas bibliotecas interessantes para usar em Smalltalk. Cito, por exemplo, [Magma][5] (que implementa um banco de dados orientado a objetos) e [Seaside][6] (um servidor e framework web). Existe, inclusive, um [site][7] que hospeda gratuitamente aplicações em Seaside.

Uma linguagem que segue de perto os conceitos de Smalltalk mas trabalha com protótipos ao invés de classes é [Self][8]. Self é um projeto da Sun que parece descontinuado, atualmente, apesar de bastante interessante.

Achou interessante? Não gostou? Discorda de alguma coisa? Quer adicionar mais alguma coisa nesse post? Comente abaixo, no nosso fórum ou envie um e-mail para nós: admin at vidageek.net.

##### *Imagem via [Kurtz-Fernhout][9]*

**Posts Relacionados:** 
*   No related posts












 [1]: http://vidageek.net/wp-content/uploads/2008/08/sqlogo.gif
 [2]: http://pt.wikipedia.org/wiki/Smalltalk
 [3]: http://en.wikipedia.org/wiki/Smalltalk
 [4]: http://www.squeak.org/
 [5]: http://wiki.squeak.org/squeak/2665
 [6]: http://www.seaside.st/
 [7]: http://www.seasidehosting.st/
 [8]: http://en.wikipedia.org/wiki/Self_%28programming_language%29
 [9]: http://www.kurtz-fernhout.com/squeak/





