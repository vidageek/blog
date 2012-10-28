---
author: Jonas Abreu
title: Rodas existem porque inventamos várias
excerpt:
layout: post
category:
  - Opiniao
  - Programacao
tags: [ ]
post_format: [ ]
---
Uma coisa que ouço sempre na comunidade Java (falo dessa pois é a que conheço melhor) são os brados de “não reinventar a roda”. Cada vez que alguém aparece com um problema e fala de uma solução que algum projeto já resolve, desincentivam o programador completamente, falando que não vale a pena resolver novamente o problema já resolvido.

Eu não tenho como discordar mais de uma afirmação como essa.

A maior parte do tempo que dedico ao desenvolvimento fora do trabalho eu estou reinventando rodas. O [Mirror][1] é um exemplo disso. Dá pra fazer quase tudo que ele faz usando a API de reflection nativa do Java, mas é muito mais trabalhoso. Se eu não decido que reinventar a roda era uma coisa boa, eu não teria uma forma melhor de trabalhar com reflection. Além de que meu conhecimento sobre reflection não seria um décimo do que é hoje.

Além disso, tem um problema maior. Quando você usa uma camada de abstração, você ignora o que está acontecendo por baixo dos panos. Muitas vezes isso é bem importante, mas é bem perigoso também porque [abstrações vazam][2]. Em algum momento você terá que lidar com a infraestrutura que está embaixo da abstração e nesse momento, conhecer como a roda foi criada é fundamental.

Então, ao contrário do que a maioria diz, eu reinvento a roda sempre que posso. Depois que está funcionando e tem uma boa cobertura de testes, se for melhor (na minha opnião) do que existe no mercado eu extraio e lanço opensource. Caso contrário, migro meu código para uma das soluções existentes. Gastei mais tempo? Não. Fiz um investimento em mim (e provavelmente na minha equipe). Me tornei mais capacitado para resolver esse e vários outros problemas.

Mas é bom lembrar que você não vai poder fazer isso sempre (afinal, não se vive apenas de investimentos). Sem contar que reinventar a mesma roda sempre é bobagem (você vai aprender muito menos do que reinventando uma roda nova). 
**Posts Relacionados:** 
*   No related posts

<g:plusone size="medium" count="false" href=""></g:plusone> 

[Tweet][3] 





**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://projetos.vidageek.net/mirror-pt/mirror
 [2]: http://www.joelonsoftware.com/articles/LeakyAbstractions.html
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/