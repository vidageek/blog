---
author: Jonas Abreu
title: Por tudo que é sagrado, escrevam testes!
layout: post

---
Acho que já passou da hora dos programadores amadurecerem um pouco quanto a necessidade de testes para TODA e QUALQUER aplicação que seja escrita, independente do tamanho. Acho que já passou muito da fase na qual a arrogância era o suficiente para você acreditar que sua aplicação funcionaria sem testes, afinal, você é o melhor programador do mundo.

“Mas o Knuth não usa testes. A gente tem que seguir o exemplo dos melhores”.

Concordo. Temos que seguir o exemplo dos melhores programadores do mundo. Mas lembre-se, Knuth não usa testes porque ele é o Knuth. Se ele diz que a aplicação dele funciona sem escrever testes eu acredito. Se isso é bom, acho questionável. Knuth não trabalha com mercado. Ele não trabalha dando manutenção em código. Ele trabalha apenas em projetos onde ele tem controle total (vale lembrar que embora o TeX seja aberto, apenas o Knuth pode usar o nome TeX). E ele é um dos maiores programadores do mundo. Uma realidade bem diferente da qual eu e você passamos todos os dias.

Sei que o mundo já gritou a muito tempo que sem testes não rola nenhuma aplicação (já ouviu falar dos caras que escreveram o [Manifesto Ágil][1]? Não? Onde você viveu nos últimos anos?). Dos maiores aos menores bons programadores. Por que raios seguir o exemplo desses caras? Será que eles realmente não sabem o que estão falando?

Dê uma chance ao que eles estão dizendo.

Eu, que não sou ninguém ainda, consigo ver incontáveis vantagens em usar testes.

*   O tempo de desenvolvimento diminui a partir da terceira semana consideravelmente (Não temos mais que nos matar caçando bugs de regressão e esperando o pessoal de QA dar aval);
*   Em geral testamos o código com um main, pra ver se está funcionando. Qual a diferença de tempo entre isso e escrever um teste de verdade que vai te ajudar por todo o projeto?
*   Sabemos exatamente qual modificação causou uma quebra de compatibilidade (em vez de saber em qual mês ela ocorreu);
*   Não precisamos lembrar de absolutamente todo o código. Se esquecer, dê uma olhada nos testes daquela parte do código e pronto;
*   Se alguém for dar manutenção no código daqui a 6 meses e incidentalmente introduzir um bug, os testes vão avisar;
*   Integração contínua funciona por causa dos testes;
*   Refactoring funciona por causa dos testes;
*   *Agile development* funciona por causa dos testes;
*   O Design da sua aplicação tende a ficar melhor e menos acoplado;
*   Entre outros, o que eu considero mais importante é o fato de poder dormir em paz, sabendo que meu código está funcionando. Ninguém vai me ligar no fim de semana (ou no meio da noite) para arrumar um sistema que está em produção.

E você ainda acha que não vale a pena investir nisso? Ignore o que os programadores de 30 anos atrás ainda estão falando (a não ser que eles tenham bom senso e usem testes).

Mas como faço para escrever testes? Primeiro, clique [aqui][2].

Gostou? É assim que se aprende muito em computação sobre o que é relativamente novo no mercado. E testes infelizmente ainda são relativamente novos no mercado.

E depois? O que eu devo fazer? Bom, de agora em diante, apenas ter disciplina para escrever os testes para as suas funcionalidades. Pronto. E o mundo está quase salvo =D .

Programadores não podem ter medo de aprender coisas novas. O novo, em programação, é o que vai garantir que possamos chegar em casa e viver um pouco, em vez de apenas trabalhar por horas até a exaustão. 














 [1]: http://agilemanifesto.org/
 [2]: http://lmgtfy.com/?q=Unit+testing+frameworks&l=1





