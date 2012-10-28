---
author: Jonas Abreu
title: 'Dia C - Usando testes para o desenvolvimento'

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
Ultimamente tenho ouvido falar muito sobre desenvolvimento orientado a testes (Test Driven Development). Uma grande vantagem dessa forma de produzir código é que você consegue garantir a consistência do seu sistema. Quando possuímos bons casos de teste, caso um bug seja inserido durante o desenvolvimento, identificamos o problema assim que rodarmos os casos de teste. Ou seja, trocamos dezenas de horas de debug por alguns segundos (ou talvez minutos) de testes rodando. Assim você acaba produzindo software em um tempo muito menor e provavelmente a qualidade do seu sistema será melhor também. 

Infelizmente não encontrei nenhum framework que facilite este tipo de desenvolvimento em C, mas é simples produzir um script (em bash, perl, ruby, etc) que rode seus casos de teste sempre que você quiser. O grande segredo é deixar tudo automatizado (rodar os testes, checar as respostas e avisar onde um possível erro está ocorrendo), assim você não fica cansado de ficar compilando seus testes manualmente para ver se o sistema funciona.

Algumas dicas para quem pretende desenvolver utilizando testes:

*   Escreva seus casos de teste antes de escrever suas funções. Isso força você a pensar melhor em casos que podem quebrar o código que você ainda vai escrever, além de diminuir o número de testes viesados (que contém os mesmos erros que seu código, por exemplo).
*   Idealmente, teste todas as suas funções. Na prática isso dificilmente acontece, mas é o ideal.
*   Teste como suas funções se integram com as outras.
*   Teste como seus módulos se integram com os outros.
*   Para cada bug (que inevitavelmente ocorrem), crie um caso de teste para evitar que esse bug seja reinserido em modificações futuras.
*   Testes são seus amigos. Não modifique-os apenas para ver todos os testes passando. Só modifique-os quando for realmente necessário.

Mais informações: [Wikipedia][1]

Com isso encerro a série Dia C. Espero que tenham gostado. 
**Posts Relacionados:** 
*   No related posts












 [1]: http://en.wikipedia.org/wiki/Test-driven_development





