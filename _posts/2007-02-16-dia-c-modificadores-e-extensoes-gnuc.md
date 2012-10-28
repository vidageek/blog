---
author: Jonas Abreu
title: 'Dia C - Modificadores e extensões GNUC'
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
Normalmente, quando estamos aprendendo a programar, acabamos lendo código já escrito por outros programadores (as vezes, alguns dos melhores programadores do mundo). Uma das primeiras coisas que notamos é que eles usam modificadores em funções e variáveis. Aqui vou explicar os modificadores que estão no padrão ANSI C (ISOC 1989).

Modificadores de Tipo:

**long**: Dobra o número de bytes de um tipo primitivo  
**short**: Reduz pela metade o número de bytes de um tipo primitivo  
**signed**: Determina que o tipo primitivo deve reservar um bit para o controle de sinal  
**unsigned**: Determina que não deve ser reservado um bit para o controle do sinal do tipo primitivo

Modificadores de Acesso:

**const**: Em uma variável indica que o valor dela não pode ser alterado e em uma função, quando aplicado a um parâmetro, significa que o parâmetro não poderá ser modificado (a função não terá efeitos colaterais com relação ao parâmetro).  
**volatile**: Significa que a variável (ou parâmetro) pode ser modificado a qualquer momento e por isso o compilador não deve otimizar atribuições sucessivas.

Modificadores de Armazenagem:

**auto**: Este modificador não tem função na linguagem. Foi adiciona à ela por questões de simetria com outros modificadores. Ele simplesmente indica que o compilador deve tratar a varável como ele sempre trata.  
**extern**: Indica que uma variável em um módulo será referenciada em algum outro módulo. A alocação dela será feita durante a lincagem do programa.  
**static**: Quando usada em uma variável, significa que quando o módulo (ou função) for carregado, esta variável será alocada apenas uma vez e será compartilhada por cada um dos módulos (ou funções).

Modificadores definidos pela ISOC 1999:

**restrict**: Significa que a variável não poderá ser alterada no escopo onde está declarada. Isso é um pouco diferente de const, que impede que a variável seja modificada de forma direta. Restrict impede que ela seja modificada de formas diretas e indiretas.  
**register**: Significa que a variável ou parâmetro será mantido em um registrador durante qualquer cálculo que a envolva. Isso aumenta muito a velocidade de trabalho da varável, o que pode aumentar o desempenho de um laço, por exemplo. Como a variável está sendo mantida em um registrador, não faz sentido usar o operador unário & para pegar o endereço dela.  
**inline**: Significa que o código de uma função deverá ser inserido no meio do código principal, assim como uma macro (um pouco mais segura). Isso aumenta a velocidade porque não existe mais o tempo de chamada de função, mas só deve ser usado em funções pequenas (aproximadamente 10 linhas) e somente compilando com otimização as funções serão inline realmente. Também apresenta o problema de aumentar o tamanho do arquivo compilado, uma vez que as funções fazem parte do código principal agora.

Extensões:  
Em compiladores padrão GNUC (verifique a existência da constante \_\_GNUC\_\_), existem diversos modificadores extras e que são muito úteis. Para mais informações verifique [Extensões GNUC ][1]

Mais informações: C Keywords -> Google

Próxima semana: Estratégias de Depuração. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://tigcc.ticalc.org/doc/gnuexts.html
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR


