---
author: Jonas Abreu
title: E se alguém trocar a sua id do AdSense?
excerpt:
layout: post
category:
  - Dicas
  - Google
  - Opiniao
  - Programacao
tags:
  - adsense
  - injecao
  - javascript
post_format: [ ]
---
Sem dúvida alguma, a maior parte da publicidade online hoje é feita usando-se o [AdSense da Google][1]. Isso não é nenhum problema, afinal o AdSense é uma das ferramentas de anúncios que tem o melhor retorno financeiro para quem a utiliza. Mas e a segurança?

Imagine que você é um blogueiro profissional que tem como principal fonte de renda o AdSense. Da noite para o dia você vê sua receita desabando. O que você faz? Investe pesado em [SEO][2] e geração de conteúdo novo. Sua receita parece reagir mas volta a cair vertiginosamente. Você consulta todas as suas ferramentas de monitoração do seu site e nota que o número de visitas não diminuiu, apenas parece que ninguém clica mais em seus anúncios.

Já desesperado e vendo a falência correr em sua direção, você nota que um leitor do seu blog comentou praticamente todos os seus posts na última semana. Os comentários até são relevantes, mas você os apaga e vê que o blog volta a dar retorno financeiro.

Qual a relação daqueles comentários com sua receita? Toda.

Provavelmente todo mundo já ouviu falar de injeção de Javascript em uma página, mas vou explicar rapidamente o que é:

Um usuário mal intencionado, após tentar de diversas formas, descobre um jeito de incluir código Javascript na sua página (Em muitos sistemas isso significa apenas abrir e fechar a tag <script> em um formulário e depois submeter) e usa isso para mudar o comportamento do site.

Javascript é uma linguagem absurdamente poderosa e flexivel (vejam JQuery e Prototype, por exemplo). Além desse poder todo, o navegador constrói uma estrutura com todos os elementos da página que pode ser manipulada livremente por Javascript.

Juntando tudo isso em um bolo só, temos um ataque formidável e de difícil detecção. Como funcionaria esse ataque (aqui pensando apenas num blog, mas a idéia é extensível para muitos outros lugares)? Simples:

1.  Descobre-se uma forma de injetar Javascript na página através dos comentários.
2.  Injeta-se o script junto com um comentário razoável em relação ao post.
3.  Quando o post é exibido e o script é rodado, ele varre a página procurando pela id do AdSense e troca por outra (a do usuário).
4.  Sempre que alguém clicar em um anúncio, o clique será atribuído à id nova, e não à do dono do blog.

E acreditem, é realmente muito fácil fazer um script desses. Mas por que isso funciona?

Como os usuários do AdSense já devem ter notado, você não precisa cadastrar todos os sites onde sua id vai aparecer. Isso significa que a Google não tem como saber qual id deve vir de qual site. Um exemplo disso (mas esse é legal) é um desses plugins para inserir AdSense no WordPress. Em um checkbox você pode destinar para o autor do plugin 5% dos cliques em anúncio que você tiver. Ele faz isso colocando a id dele em 5% dos anúncios.

Mas a Google deveria encontrar um jeito de bloquear isso? Creio que não. Isso é uma característica do AdSense que o deixa bem flexível.

O verdadeiro problema é a injeção de script. Esse é um pesadelo do mundo atual. Sempre que você recebe os dados de uma fonte insegura (no caso qualquer conteúdo gerado por usuários), você deve limpá-lo e garantir que não exista nada que possa comprometer o seu sistema.

Mas isso raramente é feito de forma efetiva (quando é feito…), o que resulta em sites expostos. Já passou muito da hora dos programadores (em especial os que desenvolvem para web) se preocuparem em evitar o bom e velho “‘;DROP TABLE Funcionario;” que alguém colocou em um formulário qualquer por diversão.

**Nota:** Não me lembro de ter visto em lugar algum alguém mencionar um ataque como esse que eu descrevi acima, mas isso não significa que ninguém já esteja usando idéias semelhantes a essa. Segurança é um assunto importante que **deve** ser mais discutido. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://adsense.google.com
 [2]: http://en.wikipedia.org/wiki/Search_Engine_Optimization
 [3]: https://twitter.com/share




