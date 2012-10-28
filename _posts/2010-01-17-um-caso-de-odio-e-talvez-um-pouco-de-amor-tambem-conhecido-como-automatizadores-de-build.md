---
author: Jonas Abreu
title: >
  Um caso de ódio e talvez um pouco de
  amor (Também conhecido como
  automatizadores de build)
excerpt:
layout: post
category:
  - Discussões
  - Java
  - Linux
  - Mac
  - OpenSource
  - Opiniao
  - Programacao
  - Software
tags:
  - ant
  - build
  - deploy
  - mvn
  - test
post_format: [ ]
---
Eu sou um grande fã de automatização de tarefas repetitivas. Odeio ter que repetir tarefas.

Isso me torna um grande fã de coisas como [integração contínua][1], deploy contínuo, [testes][2] e [automatizadores de builds][3].

Para IC, o [cruisecontrol.rb][4] é maravilhoso. Deploy contínuo eu resolvo com um simples script bash. Quanto aos testes, o [infinitest][5] (ainda vou falar mais sobre ele, mas ele é demais!) trouxe alegria de volta a minha vida.

Mas quando chega na parte de automatização de build, o mundo desaba. Como minha maior experiência é com Java, vou falar apenas sobre java.

Convenhamos, os dois automatizadores mais usados são terríveis. Tanto [ant][6] quanto [maven][7] nos fazem perder mais cabelos e mais cedo do que deveria.

Como a gente começa um projeto que vá usar um desses automatizadores? Pegamos um projeto antigo, copiamos o xml de configuração, colamos, apagamos uma parte, mudamos outra e pronto. Temos um novo projeto. Mas porque raios a gente precisa dessas coisas que foram copiadas? No ant porque o ciclo básico de muitos projetos é igual. No maven porque ele exige muita coisa quase inútil.

Eu já não gosto de xml (na verdade, acho xml muito legal, o problema é que usam ele para tudo – e na maioria das vezes, usam mal) e tenho que manter xmls muito parecidos entre todos os meus projetos. Um problema sério que o ant tem é que tudo tem que ser configurado ou ele não faz nada. Você acaba tendo que programar o seu build em xml (o que pra mim já elimina ele da minha vida).

O maven facilita um pouco nesse lado. Como ele tem um mínimo de convenções, com apenas umas 15 linhas de xml eu consigo convencer ele a compilar meu código. Mas são 15 linhas inúteis. Ele simplesmente não funciona sem essas 15 linhas.

Enquanto você apenas usa o maven para compilar seu código, rodar testes unitários, gerênciar suas dependências (sim, como todo usuário de maven eu passo por um classpath hell -em geral causado por projetos com dependências mal configuradas- por mês, mas ainda acho que vale a pena não precisar adicionar na mão), gerar a configuração para sua IDE, gerar seus jar/war, é tudo lindo e maravilhoso. O problema começa quando o projeto começa a ganhar um pouco mais de massa.

Já tentou configurar um build separado para testes de integração? mvn integration-test é uma das maiores mentiras já contadas. Você tem que se matar com o plugin do surefire (test runner que o maven usa) para conseguir separar os testes. E se você quiser um build separado para testes de aceitação? Pior ainda. Não existe mvn acceptance-test. Então ou você roda junto com o integration-test ou apela para profiles e reduz sua vida em alguns anos. E se eu sonhar com um build que rode testes de regressão para segurança (que não faz sentido rodar a cada commit. Uma vez por dia é o suficiente em muitos projetos). Nesse ponto você começa a pensar em suicídio.

E deploy? Ha! Quando você pensa isso alguém pula de trás do monitor, grita “Pegadinha do Malandro!” e te manda procurar o cargo plugin, que não vi funcionar com menos de 100 linhas de xml (quando funcionou).

Um padrão que eu notei que vem acontecendo comigo é que eu uso sempre três automatizadores. O maven para gerênciar dependências, compilar, rodar testes (mesmo com o inferno dos profiles). Scripts bash/ruby/perl/python/o\_que\_der\_na\_telha para deploy. E make para juntar tudo isso. Como? Make? Que o pessoal usa pra C? Esse mesmo. O make é simplesmente um monte de alias para um monte de comandos. Perfeito para juntar coisas completamente aleatórias.

Acabo tendo coisas como make test, integration-test, acceptance-test, deploy, etc. Mas o monte de lixo continua ali, escondido, esperando o próximo classpath hell para se auto-destruir.

Meu principal ponto com o maven é que ele tenta fazer muito mais do que deveria. Na boa? Não tem como escrever um plugin genérico para fazer deploy. Todos os sistemas são muito diferentes um do outro. Então não faça algo que vai funcionar mal e que seja difícil. Deixa para o programador se virar. Apenas facilite isso.

Bom, não escrevi esse monte de coisas apenas como um desabafo (embora tenha me feito muito bem :) ). Eu vou começar a desenvolver um automatizador que tenha uma filosofia diferente os atuais e facilite manter a minha zona organizada. Sem configuração alguma (tirando gerênciamento de dependências que não dá para evitar em qualquer projeto que use testes) ele vai ser capaz de compilar seu código, rodar qualquer tipo de teste (unit, integration, acceptance, etc). Ciclo de vida modificável (se eu não quiser que ele rode os testes unitários antes dos de aceitação, ele simplesmente não roda). O deploy fica a cargo do programador, mas o automatizador facilita a execução dos scripts. Ah, eu disse que não será usado xml algum para configuração?

Enfim, o que preciso nesse momento é de pessoas que estejam afim de contribuir com idéias e críticas (do tipo “não gosto de X porque Y”) pra esse planejamento inicial. Não criei uma lista ainda porque não sei se existem outros interessados (eventualmente sou eu que sou incapaz de usar ant e maven). Por enquanto podemos começar pelos comentários mesmo :)

**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][8] 





**Acompanhe-nos por [ RSS][9], por [Email][10] ou via [Twitter][11].**  
Veja como ter um desconto no [Dreamhost][12]: um excelente servidor web.

 [1]: http://en.wikipedia.org/wiki/Continuous_integration
 [2]: http://en.wikipedia.org/wiki/Software_testing
 [3]: http://en.wikipedia.org/wiki/Build_automation
 [4]: http://cruisecontrolrb.thoughtworks.com/
 [5]: http://improvingworks.com/products/infinitest/
 [6]: http://ant.apache.org/
 [7]: http://maven.apache.org/
 [8]: https://twitter.com/share
 [9]: http://feeds.feedburner.com/VidaGeek
 [10]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [11]: http://twitter.com/blogvidageek
 [12]: http://vidageek.net/dreamhost/