---
author: Jonas Abreu
title: 'YACP - Condições Booleanas'
layout: post

---
Continuando o tutorial, vamos começar agora o feijão-com-arroz da programação. Programação nada mais é do que controlar o fluxo de forma inteligente, para obter os resultados esperados. No próximo post vamos ver os dois controles mais simples, If e Else. Mas antes você precisa saber o que é

### Condição Booleana e Operadores Booleanos

Uma condição booleana é uma expressão (lembram de expressões numéricas?) que resultam em um valor verdadeiro ou falso. Em C, como não existe um tipo booleano, a seguinte representação é usada:

1.  Se um número é diferente de 0, ele é considerado um valor verdadeiro;
2.  Se é igual a zero, é falso.

Isso significa que 3 + 2 é verdadeiro em C, mas 4 – 4 não. 

Mas não é apenas dessa forma que fazemos operações booleanas. Existem outros operadores que servem para concatenar (ou modificar) condições booleanas. São os operadores booleanos.

Os operadores mais comuns são:

1.  Operador “E” (&&): Apenas diz que a expressão é verdadeira se as duas condições ao lado dele forem verdadeiras;
2.  Operador “Ou” inclusivo (||): Diz que uma expressão é verdadeira se uma das duas condições for verdadeira;
3.  Operador “Não” (!): Diz que uma condição é verdadeira se a condição à qual ele é aplicado for falsa e vice-versa.

Chega de teoria. Basicamente o que acontece é o seguinte:

    
    2+3 && 5 é verdadeiro
    2+3 && 0 é falso
    2+3 && 4 é verdadeiro
    2+3 || 0 é verdadeiro
    2+3 || 1 é verdadeiro
    2-2 || 1-1 é falso
    !0 é verdadeiro
    !1234567 é falso
    (0 && 0) || 1 é verdadeiro
    

Notem que se você ler o que está escrito (sabendo que 0 é falso e os outros números são verdadeiros) fica bem intuitivo:

    
    verdadeiro E verdadeiro é verdadeiro
    verdadeiro E falso é falso
    (falso E falso) ou verdadeiro é verdadeiro
    NÃO falso é verdadeiro
    

Certo… tirando o último exemplo não é tão intuitivo assim mas você se acostuma.

Se você fizer todas as comparações possíveis usando duas condições e um operador você chega as seguintes tabelas:

**&&**          | **verdadeiro** | **falso** 
:---------------: | :--------------: |:---:
**verdadeiro**  | verdadeiro     | falso     
**falso**       | falso          | falso    


Operador Ou (||) | **||**         | **verdadeiro** | **falso**  
:----------------: |:-------:|:------:
**verdadeiro** | verdadeiro     | verdadeiro 
**falso**      | verdadeiro     | falso      


Operador Não (!) | **!** | **verdadeiro** | **falso** 
:----------------: |:------: |:----:
      | falso          | verdadeiro

Existe um outro operador, chamado Ou Exclusivo. As expressões formadas por ele são verdadeiras se uma única condição (das duas em volta dele) for verdadeira. Se as duas forem verdadeiras ou falsas a expressão é falsa. Ele não costuma ser muito utilizado (só usei ele pra criptografia e mesmo assim era um operador um pouquinho diferente. 



















