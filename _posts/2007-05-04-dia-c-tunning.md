---
author: Jonas Abreu
title: 'Dia C - Tuning'
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
Enfim chegamos à parte que todos esperavam. Como extrair ou últimos ciclos do seu processador. Como evitar fazer qualquer coisa que não seja realmente necessária ao seu código. Mas antes de começar a carnificina, algumas considerações:

*   Antes de mais nada, otimização não deve ser feita em todo o seu código. Deve ser feita apenas nos gargalos de desempenho. Após o código ser otimizado, ele costuma ficar muito ilegível ou até mesmo inseguro e instável. Por isso, quanto melhor escolhida a área de otimização, melhor sua otimização.
*   Nunca, mas NUNCA mesmo, comece seu projeto já otimizando o código. Essa é uma das receitas para o fracasso total do seu projeto. Código otimizado é mais difícil de ler, de escrever e de depurar. Normalmente você vai perder horas apenas pra entender o que está acontecendo em um bloco de 20 linhas de código.
*   Otimização não reduz a complexidade do algorítmo. Usar um algorítmo melhor (de menor complexidade) é quase sempre mais indicado do que otimizar o código (falo quase sempre porque talvez exista algum caso estranho em que isso não seja verdade).

Mas, se depois de fazer tudo isso, seu código ainda não roda em tempo satisfatório, o resto das dicas pode ajudar bastante:

*   Antes de mais nada, encontre o gargalo de desempenho. Normalmente um programa gasta 90% do tempo executando 10% do código. Esses 10% devem ser o alvo da sua otimização
*   Indique quais variáveis devem ser mantidas em registradores. Geralmente contadores são as variáveis mais acessadas durante a execução de um laço. Se elas forem mantidas nos registradores, você ganhará tempo pois elas não precisam ir para a cache e voltar o tempo todo.
*   Sempre que possível, evite calcular duas vezes a mesma coisa. Armazene o resultado(não estou falando de Programação Dinâmica. Estou falando de cálculos simples, como onde deve estar a informação em uma matriz).
*   Quando precisar atravessar um vetor em ordem crescente ou decrescente, faça isso com um loop em que o ponteiro é incrementado. Isso é mais eficiente porque quando você acessa uma posição de um vetor, você usa uma multiplicação para isso. Quando você atravessa o vetor incrementando o ponteiro, a multiplicação é trocada por uma multiplicação mais simples (dependendo, pode ser até mesmo um bitshift) e uma soma.
*   Não passe muitos parâmetros ou parâmetros grandes para funções. Dê preferência a passagem de ponteiro quando o parâmetro ultrapassar o número de bytes de uma Word (4 bytes em um processador de 32 bits e 8 em um de 64). Com isso, você reduz o overhead do protocolo de chamada de função, que deve alocar memória extra na pilha e identificar os seus parâmetros.
*   Sempre que possível e viável, declare suas funções como inline. Funções inline são inseridas diretamente no código, evitando a chamada de função. Mas não faça isso com funções grandes (mais que 7 linhas). Pode gerar erros estranhos e bugs realmente difíceis de achar, além de não melhorar a velocidade do código
*   Troque chamadas de funções simples por macros. Uma macro é ainda mais eficiente que uma função inline, mas é menos segura.
*   Declare suas variáveis no bloco mais local possível. Assim, somente quando ela for necessária ela será alocada.
*   Quando suas condições booleanas forem compostas, coloque elas em ordem de frequência. Isso otimiza pois C fecha as codições booleanas por “curto-circuito”. Quando alguma delas impede que o resultado seja TRUE, ele simplesmente considera FALSE e não testa o resto. Então faz bastante diferenção você verificar primeiro algo que quase nunca acontece e somente depois você verifica o que está sempre determinando a condição booleana.
*   Se quiser economizar memória em suas structs, coloque os tipos de dentro dela em ordem decrescente de tamanho (em bytes). Isso vai impedir que o compilador use um alinhamento de 4 ou 8 bytes para toda a estrutura. Mas cuidado porque isso pode reduzir o desempenho do seu programa.
*   Se estiver usando algum compilador que defina \_GNUC\_, ou seja, suporta o padrão GNU para C, especifique atributos (\_\_atributte\_\_) para as suas funções e estruturas indicando o que pode ou não pode acontecer com elas.
*   Use assembly. C possui suporte a assembly inline, usando o identificador “asm” (“\_\_asm\_\_” também é válido em compiladores GNUC).

Mais informações: [Optimizing C and Cpp][1] e [C Coding][2]

Próximo post: ??? 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][3] 





**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://www.eventhelix.com/RealtimeMantra/Basics/OptimizingCAndCPPCode.htm#Minimize%20Local%20Variables
 [2]: http://www.numerix-dsp.com/appsnotes/c_coding.html
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/