---
author: Jonas Abreu
title: 'Dia C - VarArgs'
excerpt:
layout: post
category:
  - C
  - Dicas
  - Programacao
  - Tutoriais
tags:
  - C
  - Dicas
  - Programacao
  - Tutoriais
post_format: [ ]
---
A partir de hoje, toda sexta-feira será o dia “C”, dia em que eu irei postar aqui no blog dicas sobre programação na linguagem C (sim, puro C, nada de C++, C#, Objective-C ou outros).  
Antes de mais nada, é bom avisar que os posts não são destinados a quem começou a aprender C agora (nada impede que leiam, mas vai ser difícil de entender) e sim para pessoas que já têm alguma experiência (por exemplo, conseguem fazer um jogo de sudoku). Dados esses avisos, vamos começar.

VarArgs:

A primeira coisa que um programador aprende a fazer em C é imprimir algo na tela (geralmente “Hello World”). Vocês ja devem ter notado que a função printf permite que você passe um número variante de argumentos para ela. Até aí nenhum problema. O problema é que C não permite (nativamente) que as funções apresentem mais de um protótipo. Portanto, como isso é feito??

Utilizando-se quatro macros especiais e um tipo definidos em stdarg.h (Padrão ANSI). São eles:  
- … (sim, isso é uma macro);  
- va\_start(va\_list, last);  
- va\_arg(va\_list, type);  
- va\_end(va\_list);  
- va_list (Este é o tipo definido em stdarg);

Para usá-los, o que deve ser feito é:  
1. Declarar a função que vai aceitar os argumentos variáveis com pelo menos um parâmetro fixo e após o último parâmetro fixo colocar a macro “…” como se fosse um parâmetro extra.(a função deverá ter essa cara: TIPO foo(tipo1 param1, tipo2 param2, tipoN paramN, …) );  
2. Dentro da função, deve ser declarado uma variável do tipo va_list;  
3. Antes de querer recuperar os parâmetros variáveis, deve-se utilizar a macro va\_start para inicializar a va\_list. (se a va\_list for declarada como args, no nosso exemplo ficaria: va\_start(args, paramN); );  
4. Agora é que o problema começa. Para recuperar os parâmetros, deve-se conhecer o tipo do parâmetro. Como fazer isso? Bom, não existe uma forma correta ou errada de se fazer isso. Você pode definir que todos os parâmetros serão de um tipo ou coisas do gênero. A saída mais elegante e eficiênte que eu vi é a usada pelo printf. O parâmetro fixo do printf é uma string que tem a informação sobre os parâmetros. Assim é fácil saber que quando for encontrado um %c deve-se pedir um parâmetro do tipo char e etc. (No nosso exemplo, se eu quisesse recuperar um int, deveria usar va\_arg da seguinte forma: int i = va\_arg(args, int); );  
5. Depois que já tiver feito o que quiser, lembre-se de colocar a macro va\_end no final da função para finalizar e liberar a va\_list. Isso é importante pois erros obscuros e estranhos podem ocorrer caso isso não seja feito. (No exemplo: va_end(args); );

Outra forma de usá-los é passar a va\_list como parâmetro para uma outra função e assim ela poderá ler os parâmetros no lugar da função que recebeu os parâmetros variáveis (como a função vprintf (ANSI C) e a função dprintf (Do livro “Obfuscated C Code Contest and Other Mysteries”)). Também fiz um teste e passando para uma função um ponteiro de va\_list (va_list *) é possível fazer com que a primeira função leia, por exemplo, três parâmetros, chame uma função para ler mais 2 e depois leia outro parâmetro.

Isso pode parecer meio confuso, mas depois que você aprende a usar você nota que é um recurso muito poderoso de C, mas que é pouco aproveitado pelos programadores em geral.

Maiores informações: man stdarg (Para usuários de sistemas Unix), stdarg -> Google (Para qualquer usuário).

Próxima semana, ponteiros de funções. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [4]: http://twitter.com/blogvidageek

