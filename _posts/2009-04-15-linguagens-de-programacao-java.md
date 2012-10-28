---
author: Luiz
title: 'Linguagens de Programação - Java'
excerpt:
layout: post
category:
  - Discussões
  - Java
  - Opiniao
  - Programacao
  - Software
tags:
  - Groovy
  - Java
  - JRuby
  - JVM
  - Mainstream
  - Sun
post_format: [ ]
---
![Duke][1]
Duke: O mascote oficial de JavaJava é uma das linguagens 

*mainstream* do momento. Alguns gostam, outros odeiam… Afinal, o que torna essa linguagem tão popular e impopular ao mesmo tempo? Quais são os pontos fortes e fracos dessa linguagem criada pela Sun na década de 90 e que é atualizada até hoje? Vamos analisar a linguagem de uma maneira global antes de destrui-la de vez na [série JSF][2] :)

Java é uma linguagem de tipos estáticos e explícitos, ou seja, você tem que declarar o tipo de sua variável. Junte a isso os modificadores de acesso, sincronismo e gravação e você terá uma ideia da burocracia da linguagem. Isso é visto como uma desvantagem por muitos, mas também tem suas vantagens. Se, por um lado, perde-se flexibilidade, por outro ganha-se em segurança.

Os criadores de Java procuram sempre manter compatibilidade entre as versões da linguagem. Isso significa que código das primeiras versões do Java ainda são compiláveis pelos compiladores para as novas versões sem ser necessário alterar o código. Essa decisão é boa para as empresas que trabalham com muito código legado mas é ruim para a linguagem. Por causa disso, decisões erradas sobre diversos aspectos da linguagem são visíveis até hoje. Por causa disso, também, a linguagem tem poucas (55) palavras reservadas, mas cada uma podendo ter mais de um significado dependendo do lugar em que aparece, o que gera confusão e implica em sintaxe pouco intuitiva em muitos casos (vide classes anônimas, blocos construtores, a sintaxe do *enhanced for*, etc).

Por esses aspectos já dá para notar porque a linguagem ficou tão popular: porque as empresas gostaram. A linguagem é padronizada, burocrática e não exige manutenção conforme é atualizada. Perfeito para elas! Não tanto para os programadores…

Como um dos objetivos iniciais da linguagem era a portabilidade dos programas, foi decidido que os programas seriam executados em uma máquina virtual. Uma crítica que muitos opositores de Java fazem é que isso torna os programas mais lentos e “pesados”. De fato, se considerarmos que a máquina virtual é uma camada a mais na execução de um programa, é lógico concluir que isso vai tornar a execução mais lenta. Isso era uma realidade incômoda até pouco tempo atrás mas, recentemente, as máquinas virtuais para Java evoluíram a tal ponto que a velocidade de execução de um programa em Java é comparável com a de um programa em [C][3]. Devemos considerar, é claro, que isso acontece depois de algum tempo de execução, quando a máquina virtual já carregou e otimizou o código. Mas o fato é que as máquinas virtuais para Java estão tão boas que outras linguagens interpretadas (ou seja, que rodam em máquinas virtuais) estão utilizando a máquina virtual Java para executarem o código. Dois exemplos disso são o projeto [JRuby][4], para executar código [Ruby][5], e a linguagem [Groovy][6], que foi escrita já com o intuito de ser facilmente executada na máquina virtual de Java.

Para concluir esse post (mas não necessariamente o assunto), podemos dizer que a linguagem já está, digamos, velha. Isso também tem suas vantagens e desvantagens. As vantagens são a tecnologia bem desenvolvida sobre ela (o que inclui a máquina virtual) e a grande quantidade de ferramentas para se trabalhar com ela (bibliotecas e ambientes de desenvolvimento). A principal desvantagem, acentuada pela decisão de compatibilidade com versões anteriores, é a dificuldade de evoluir a linguagem, dadas as decisões erradas de arquitetura e a quase-impossibilidade de alterar sua sintaxe. 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][7] 





**Acompanhe-nos por [ RSS][8], por [Email][9] ou via [Twitter][10].**  
Veja como ter um desconto no [Dreamhost][11]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2009/03/duke_java.gif "Duke"
 [2]: http://vidageek.net/2009/04/10/jsf-javas-sinal-of-failure/
 [3]: http://vidageek.net/2008/12/15/linguagens-de-programacao-c-2/
 [4]: http://jruby.codehaus.org/
 [5]: http://vidageek.net/2008/11/24/deffective-by-design/
 [6]: http://groovy.codehaus.org/
 [7]: https://twitter.com/share
 [8]: http://feeds.feedburner.com/VidaGeek
 [9]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [10]: http://twitter.com/blogvidageek
 [11]: http://vidageek.net/dreamhost/