---
author: Jonas Abreu
title: 'Dia C - Estratégias de depuração (debug)'
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
Um dos maiores problemas que um programador encontra é a fase de testes do software. Praticamente sempre algum bug (erro) sintático, conceitual ou lógico está no meio do código muito bem disfarçado. Em C esse problema é ainda maior porque após a compilação do código, C gera pouquissímos erros e assim fica realmente complicado descobrir o que está acontecendo. Um simples ‘*’ pode tomar algumas horas do programador antes de ser corrigido. Essas horas perdidas significam que o projeto pode estar ficando atrasado, o que não é bom independente se o projeto é de software proprietário ou livre. Aqui vão algumas dicas para lidar com esses erros:

1. A melhor forma de lidar com erros é evitá-los. Planeje bastante o programa que você vai desenvolver (mesmo que seja pequeno). Estruture bem as funções que você vai usar. Minimize o tamanho das funções. É muito importante evitar funções que fazem muitas coisas de uma vez. Mantenha o código claro durante a programação. Esse tempo extra gasto costuma reduzir muito o tempo de depuração. Na verdade ele não é tempo gasto. É tempo investido.

2. Evite escrever grandes quantidades de código antes de depurar o código que forma a base para este novo.

3. Sempre comece a depurar a partir das funções mais simples e gradualmente começando a depurar funções mais complexas. Assim você garante a segurança das funções mais simples, que geralmente são usadas nas mais compplexas.

4. Faça bons casos de teste. Na maioria das vezes testes automatizados podem nos mostrar erros que nem imagináva-mos que poderiam ocorrer.

5. Para remover bugs encontrados, existem algumas estratégias como:  
- Impressão de variáveis para que seja possível rastrear a execução do programa ou  
- Usar um depurador (debugger)  
O primeiro possui uma curva de aprendizado de 30 segundos. Basta saber usar o printf que já é possível depurar o seu código. Para usar o segundo, você terá que investir um certo tempo no aprendizado, mas novamente, é um bom investimento. É muito mais rápido e eficaz usar um depurador (como o gdb) do que tentar rastrear o código (as vezes, rastrear é impraticavel pois o sistema ou módulo é grande demais).

6. Lembre-se que qualquer código está sujeito a erros. É provado que é impossível provar que o seu código produzirá o resultado certo para qualquer entrada a que ele seja submetido. Um algoritmo pode ser provado correto, mas uma implementação nunca. Assim, bons casos de testes garantem, pelo menos, uma segurança satisfatória.

Mais informações: gdb -> Google

Na próxima semana: Pilha do C. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share




