---
author: Luiz
title: Testes unitários em C++
excerpt:
layout: post
category:
  - C
  - Dicas
  - Programacao
tags:
  - C
  - cppunit
  - testes
post_format: [ ]
---
![CppUnit Logo by Luiz][1]

De uns tempos para cá, testes unitários ganharam muita importância no desenvolvimento de *software*. Devido à segurança que eles transmitem e por servirem de documentação, testes unitários deveriam ser utilizados no desenvolvimento de praticamente todos os projetos. Porém, muitas vezes os programadores preferem ou são obrigados a utilizarem linguagens que surgiram antes da popularização dos testes unitários e, portanto, não têm suporte de fácil acesso a bibliotecas de testes unitários. Mas linguagens mais antigas como C++ não foram esquecidas pelos adeptos dos testes unitários. E, para oferecer suporte a testes unitários em C++, existe pelo menos uma biblioteca de testes unitários: [CppUnit][2]. 



O CppUnit é um conjunto de classes, métodos e macros que permitem a utilização de testes unitários com simplicidade e facilidade. Também é possível fazer testes (unitários ou não) sem essa biblioteca, mas para quê reinventar a roda? O CppUnit já traz o suporte básico a asserções, *fixtures*, suítes de testes, além de contar com integração com diversos ambientes de programação, incluindo o Eclipse e o MSVC, para rodar os testes e encontrar os erros.

Se você programa em C++ e não quer mudar para Java ou outra linguagem que dê acesso mais fácil a testes, como o JUnit, que já vem praticamente integrado ao Java, vale a pena tentar o CppUnit. Não é tão fácil de integrar ao seu projeto, como acontece em Java, mas o esforço compensa. 
**Posts Relacionados:** 
*   No related posts



[Tweet][3] 





**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2008/03/cppunit_logo_bw.gif
 [2]: http://cppunit.sourceforge.net/cgi-bin/moin.cgi/FrontPage
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/
