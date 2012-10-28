---
author: Jonas Abreu
title: Hibernate Search
excerpt:
layout: post
category:
  - Dicas
  - Java
  - OpenSource
  - Programacao
tags:
  - hibernate
  - lucene
  - search
  - textual
post_format: [ ]
---
Semanas atrás eu apanhei bastante do [Hibernate Search][1]. Na verdade, não foi dele que eu apanhei, mas de não entender algo fundamental sobre ele.

Pra quem não sabe, o hibernate search é uma ferramenta muito legal para busca textual construída em cima do [Lucene][2] e do [Hibernate][3]. É realmente muito simples de configurar e usar. Mas tem um ponto que eu sabia mas não entendia as implicações.

O cenário era o seguinte. Eu tinha uma aplicação que usava lucene para fazer busca textual. Tudo era feito na mão e tinhámos uma boa suite de testes cobrindo a busca textual. Como a utilização do lucene foi em um momento experimental (fazer e depois melhorar), resolvemos migrar para hibernate search. Tirando o tempo que demorei para notar que a versão atual do hibernate search exige Lucene 2 e não o 3 que usávamos, dois testes insistiam em não passar por nada no mundo.

Todo o resto funcionava (o que praticamente garantia que a configuração estava certa). Depois de muito quebrar a cabeça, me lembrei de como o hibernate search funciona.

O hibernate possui uma estrutura de interceptadores para muita coisa interna dele, inclusive operações básicas com o banco, como inserir, atualizar, remover, etc.

O hibernate search entra exatamente nesse ponto. Cadastrando interceptadores para todas essas funções, ele é capaz de pegar os dados e serializar no índice do lucene também (notem que existe replicação de informação, uma vez que você terá os dados no banco e no índice do lucene). E esse é exatamente o ponto.

O teste que não passava era um teste que simulava o comportamento do usuário, usando [WebDriver][4]. Na funcionalidade em questão, não eram enviados todos os dados do objeto, apenas a chave primária dele. Com isso, o hibernate search indexava apenas a chave, pois todo o resto do objeto estava vazio. Quando me lembrei disso, foi necessário apenas fazer uma busca antes de mandar gravar o objeto. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][6], por [Email][7] ou via [Twitter][8].**  
Veja como ter um desconto no [Dreamhost][9]: um excelente servidor web.

 [1]: https://www.hibernate.org/410.html
 [2]: http://lucene.apache.org/
 [3]: http://hibernate.org
 [4]: http://code.google.com/p/selenium
 [5]: https://twitter.com/share
 [6]: http://feeds.feedburner.com/VidaGeek
 [7]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [8]: http://twitter.com/blogvidageek
 [9]: http://vidageek.net/dreamhost/
