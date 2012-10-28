---
author: Jonas Abreu
title: Red, Green, Refactor?
excerpt:
layout: post
category:
  - Dicas
  - Java
  - Programacao
tags:
  - red green refactor
  - tdd
post_format: [ ]
---
Já faz um bom tempo que eu mudei o meu ciclo de desenvolvimento com testes do [Red, Green, Refactor][1] (ciclo tradicional de TDD) para algo um pouco diferente.

O que aconteceu foi que eu tinha muito problema para pensar nas unidades pequenas sem ter as unidades grandes. Ah? Basicamente eu não consigo pensar em como implementar sem estar resolvendo o problema.

Confuso ainda, certo? 

Bom, digamos que eu queira implementar algo que transforme um html em uma árvore (basicamente, parsear html). Eu não consigo pensar em como eu faria para parsear a tag. Apenas consigo pensar em como funcionaria para o html. Algo como:

    
    HtmlParseado html = new HtmlParser().
                      parse("<html><title>Conteudo</title></html>");
    

Somente no momento em que estou dentro do método parse que eu consigo pensar em como descobrir quais são as tags. Por que isso? Por causa da abstração.

No código acima não faz o menor sentido pensar nas tags, apenas no html completo. Dentro do método parse começa a fazer sentido procurar pelas tags.

Então o que tenho feito? Eu crio um ou mais testes que sobre a funcionalidade inteira (no caso, o que o parse deve fazer com o html).  
Algo como:

    
    @Test
    public void testaQueOParserFunciona(){
      HtmlParseado html = new HtmlParser().
                     parse("<html><title>Conteudo</title></html>");
      Assert.assertEquals("html", html.getFirstChild().getTagName());
      ...
    }
    

O problema é que esse teste é muito grande para guiar o desenvolvimento. O que eu faço então? Parto para o problema menor que é o reconhecimento de tags.

Como nesse ponto eu já consigo imaginar mais ou menos o que quero que aconteça, consigo criar os testes para fazer o reconhecimento de tags.  
Mas durante todo esse tempo, o meu teste do ponto mais alto da abstração continua sem passar. Isso quebra com o RGR, mas me ajuda muito com o desenvolvimento da interface de uso.

Talvez eu tenha perdido um pouco na qualidade do código usando essa abordagem top-down, mas ganho bastante em termos de usabilidade desse código. Isso me força a pensar em primeiro lugar em como vai ser usada a funcionalidade final e não nos menores constituintes dela.

Outra coisa que esses testes me ajudam muito é a saber quando eu terminei a funcionalidade mais complexa. 

O que acham disso? Já fizeram (ou fazem) algo semelhante? 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://en.wikipedia.org/wiki/Test-driven_development
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [5]: http://twitter.com/blogvidageek

