---
author: Jonas Abreu
title: Até o número de cliques?
excerpt:
layout: post
category:
  - Google
  - Programacao
tags:
  - Google
  - Programacao
post_format: [ ]
---
Esses dias, quando estava instalando o plugin do Remember The Milk, eu notei uma coisa interessante. O site de busca do Google mostra o número de vezes que você clicou em um determinado link e a data do último clique.

![Número de cliques e data do último][1]

Isso só funciona se você estiver logado, mas é bastante perturbador.

Não é por causa de questões de privacidade (não quer que o Google receba informações sobre onde você clica? não fique logado o tempo inteiro). É mais por questões computacionais.

Eu sei que o Google talvez possua a maior capacidade computacional do mundo. Muitos programadores muito bons trabalham na Google. Mas isso já é demais.

Para manter essa informação, ou ela está armazenada no cliente ou no servidor. Se estivesse no cliente (e fosse apenas para nos mostrar algo bonitinho no site) bastaria que você entrasse no site de busca de duas máquinas diferentes e o número de cliques não bateria. Não e isso que acontece. E o número de cliques inclusive influencia a ordem em que os sites estão listados. A primeira vez que acessei o remember the milk, ele era o terceiro na lista. Hoje é o primeiro.

Ou seja, a informação está no servidor. A Google guarda cada clique que damos no site. Mas como? Existem milhões de contas no google. Sei lá quantas buscas diárias a Google responde, mas só eu faço pelo menos 100 (se não tiver muito o que fazer no dia). Como você faz com que isso que parece apenas uma bobeira (mas na verdade é informação vital para o sistema de busca deles) seja escalável?

Eles têm que guardar isso em disco. Quantos sites eu já acessei hoje? Tudo guardado. No modelo mais minimalístico que consigo pensar, associado a minha conta existe algo que guarda a busca que fiz, o site que acessei, o número de vezes que acessei e a data do último acesso. Pode parecer pouco, mas quando você multiplica o acesso disso por N (para valores bem grandes de N) é algo absurdo.

É algo pra deixar qualquer um louco (ainda mais eu que adoro fazer otimizações de baixo nível).

Já estou melhor depois desse desabafo. Mas ainda assusta. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://vidageek.net/public/images/numero_cliques.png
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek
 [4]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [5]: http://twitter.com/blogvidageek
 [6]: http://vidageek.net/dreamhost/
