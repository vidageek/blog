---
author: Jonas Abreu
title: >
  Quem disse que a mesa está
  desorganizada?
excerpt:
layout: post
category:
  - Opiniao
  - Programacao
tags:
  - Opiniao
  - Programacao
post_format: [ ]
---
Sabe quando você chega na casa de um programador, olha pra mesa dele e vê algo assim:

![Minha mesa][1]

Livros por todos os lados, pilhas de CDs, caixas de placas, fios quase ameçando sua segurança, etc. Sua primeira reação (se você mantém uma mesa “arrumada”) é aparentar que nem notou, afinal amizade é pra essas coisas, né?

Mas você com certeza vai sair de lá pensando que aquele é seu amigo mais desorganizado. Você não imagina o quanto está errado. Aquela é uma das formas mais otimizadas de se manter uma mesa quando você usa muitas coisas diferentes e está sempre acrescentando mais itens.

Agora que você pensa que eu estou louco e que você deve cancelar a assinatura do [nosso feed][2], leia mais um pouco que você vai entender.

Existe um tipo de [árvore binária balanceada][3] que possui um comportamento muito interessante. 

A [Splay Tree][4], muito útil para [caching][5], funciona da seguinte forma:

Sempre que você acessa um item, ela se reorganiza inteira e leva esse item para a raiz da árvore. Assim, se você acessar esse mesmo item na próxima chamada, ele vai ser acessado muito mais rápido. Mas isso não costuma acontecer, certo? Sem problema. Quando você fizer a próxima busca o item que estava na raiz desce e se torna filho da raiz. Agora a chance de você querer ele já é maior e ele continua perto da raiz, facilitando o acesso a ele.

Essa árvore tem por característica manter mais próximo à raiz os itens mais acessados. Os outros vão descendo vagarosamente até as folhas. A altura dela não é logarítmica como em [outras árvores][6], mas no caso médio ela se comporta como as outras.

Voltando ao assunto, o mesmo acontece com a mesa do programador. Os itens que ele utiliza com mais freqüência ficam mais próximos de suas mãos, minimizando o tempo gasto para pegá-los.

Da próxima vez que encontrar alguém que tem uma mesa muito bagunçada, desconfie de que é um bom programador, ao invés de achar que não passa de um desleixado ;). 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][8] ou via [Twitter][9].**  
Veja como ter um desconto no [Dreamhost][10]: um excelente servidor web.

 [1]: http://vidageek.net/public/images/mesa.jpg
 [2]: http://feeds.feedburner.com/VidaGeek
 [3]: http://en.wikipedia.org/wiki/Self-balancing_binary_search_tree
 [4]: http://en.wikipedia.org/wiki/Splay_tree
 [5]: http://en.wikipedia.org/wiki/Cache
 [6]: http://en.wikipedia.org/wiki/AVL_tree
 [7]: https://twitter.com/share
 [8]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [9]: http://twitter.com/blogvidageek
 [10]: http://vidageek.net/dreamhost/
