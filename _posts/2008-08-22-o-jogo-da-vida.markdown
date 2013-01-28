---
author: convidados
title: O Jogo da Vida
layout: post

---
![Life][1]  
  
Não é deste jogo da vida que abordaremos 

O **Jogo da Vida** (*Life* no original) foi um dos primeiros programas que fiz na faculdade como exercício e é, definitivamente, um dos clássicos da computação. Imagine uma grade bidimensional onde células podem estar vivas ou mortas. O Jogo ocorre em turnos, e a cada turno decidimos se uma célula continua viva, morre ou nasce dependendo apenas de três regras básicas que são baseadas nos 8 vizinhos do turno anterior.

*   **Regra de nascimento:** Uma célula morta com exatamente três vizinhos torna-se uma célula víva  
    ![Regra de Nascimento][2]  
    ![Regra de Nascimento 2][3] 
*   **Regra de sobrevivência:** Uma célula viva com dois ou três vizinhos continua viva  
    ![Regra de Sobrevivência 1][4]  
    ![Regra de Sobrevivência 2][5]  
    ![Regra de Sobrevivência 3][6] 
*   **Regra de morte:** Em todos os outros casos, a célula morre ou continua morta (devido a superpopulação ou a solidão)  
    ![Regra de Morte 1][7]  
    ![Regra de Morte 2][8]  
    ![Regra de Morte 3][9]  
    ![Regra de Morte 4][10] 

Este jogo é um caso de autômatos celulares, um ramo bem estudado da computação e da matemática discreta. Mas mais do que isso, ele é equivalente a uma **máquina de Turing** e portanto é tão poderoso quanto qualquer linguagem de programação e os hardwares existentes (obviamente em capacidade computacional e não velocidade, apesar de que nestes casos não se altera a polinomialidade (ou exponencialidade) de um algoritmo). Isso é feito de uma maneira muito estranha, imitando o envio de pulsos elétricos e operadores *booleanos*. Recentemente me deparei com um texto (de onde foram tiradas as imagems) que aborda muito bem o assunto, discutindo a história do Jogo da Vida, padrões encontrados e até contém um applet com uma implementação para que você possa ver as simulações. Este texto pode ser encontrado no  
[Math.com][11]. 

Duas curiosidades, a primeira o pessoal da **IBM** tem uma sessão chamada [*Ponder This*][12] que aborda vários desafios, um por mês, dos mais variados assuntos que interessam computólogos. Neste *link* está um de Maio deste ano que aborda o jogo da vida, vale a pena dar uma olhada. A segunda, se você não leu ainda, dê uma olhada no nosso *post* recente sobre [calcular PI e porque não se deve fazer isso][13]. 

  
Foto por [rastafabi][14]  
 















 [1]: http://vidageek.net/wp-content/uploads/2008/08/life.jpg
 [2]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-nascimento.gif
 [3]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-nascimento-2.gif
 [4]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-sobrevivencia-1.gif
 [5]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-sobrevivencia-2.gif
 [6]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-sobrevivencia-3.gif
 [7]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-morte-1.gif
 [8]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-morte-2.gif
 [9]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-morte-3.gif
 [10]: http://vidageek.net/wp-content/uploads/2008/07/regra-de-morte-4.gif
 [11]: http://www.math.com/students/wonders/life/life.html "Math.com"
 [12]: http://domino.research.ibm.com/Comm/wwwr_ponder.nsf/challenges/May2008.html "Ponder This"
 [13]: http://vidageek.net/2008/08/13/nao-calcule-pi-em-binario/ "calcular PI e porque não se deve fazer isso"
 [14]: http://flickr.com/photos/rastafabi/490403800/ "rastafabi"





