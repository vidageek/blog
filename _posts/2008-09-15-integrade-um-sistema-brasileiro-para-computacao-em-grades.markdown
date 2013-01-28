---
author: fabs
title: 'InteGrade: Um Sistema Brasileiro para Computação em Grades'
layout: post

---
![Integrade][1]  
Já foi o tempo em que conseguir poder de processamento de centenas de milhares de processadores era algo caro e difícil. Com a criação da computação em grade e o avanço da internet, muitos grupos de pesquisa ao redor do mundo passaram a utilizar o poder de milhares ou até milhões de máquinas domésticas, iguais a esta que você está usando para acessar o vidageek, como fonte de recursos para computação científica de todo tipo.

Muitos projetos atualmente usam o poder de grades; talvez o mais famoso seja o [seti@HOME][2], que reune mais de 5.2 milhões de participantes, com o objetivo de processar informações do espaço em busca de vida extraterrestre. Para realizar essa tarefa, o SETI conta com um [*middleware*][3] de grades chamado [BOINC][4], uma plataforma livre construída com recursos voluntários, desenvolvido pela Universidade de Berkeley.

Mas não é só Berkeley que entende do assunto. Uma união entre o Instituto de Matemática e Estatística (IME) da USP, a PUC do Rio de Janeiro e a Universidade Federal do Mato Grosso do Sul (UFMS) trabalha há quatro anos no desenvolvimento de uma grade computacional *open-source* para aproveitar os recursos ociosos de máquinas domésticas. Batizado de [Integrade][5], o *middleware* brasileiro é uma grade de processamento genérico, com suporte a uma variada gama de aplicações, e que tem como objetivo principal garantir que o usuário que ofereça seus recursos para a grade não sinta, sob hipótese nenhuma, perda de desempenho em sua máquina.

Muitas tecnologias estão envolvidas, como [Corba][6], o que torna trabalhar no projeto muito legal. A diversidade de linguagens que compõem os diferentes módulos do Integrade também é grande: vai desde Java para as aplicações em servidores, até C, C++ e lua no lado dos clientes. Mas o trabalho também oferece alguns desafios; entre eles está a escrita de [testes unitários][7], um tópico já abordado aqui no VidaGeek.

O Integrade ainda é bem jovem, mas já se encontra funcional. A última versão (0.4RC2) pode ser obtida [aqui][8]. Por hora, só funciona em Linux, mas para a próxima versão já teremos ele rodando em Macs e Windows.

Este post foi escrito por um convidado: **Fabricio de Sousa Nascimento**, membro do grupo de pesquisa do projeto Integrade, é aluno do terceiro ano de ciência da computação pelo **IME/USP**. E teoricamente mantém o [blog do fabs][9]. 














 [1]: http://vidageek.net/wp-content/uploads/2008/09/integrade.png
 [2]: http://setiathome.berkeley.edu/ "seti@HOME"
 [3]: http://pt.wikipedia.org/wiki/Middleware "Mais ou menos como o software que está no 'meio'."
 [4]: http://boinc.berkeley.edu/ "boinc"
 [5]: http://integrade.incubadora.fapesp.br/ "Integrade"
 [6]: http://pt.wikipedia.org/wiki/CORBA "mais wikipedia..."
 [7]: http://vidageek.net/2008/03/28/testes-unitarios-em-c/ "testes"
 [8]: http://integrade.incubadora.fapesp.br/ "se já estiver no ar novamente ..."
 [9]: http://cemshost.com.br/~fabsn/dev/doku.php "Faz tempo que não Atualiza!"





