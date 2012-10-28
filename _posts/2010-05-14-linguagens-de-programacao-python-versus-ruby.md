---
author: Luiz
title: 'Linguagens de Programação - Python versus Ruby'
excerpt:
layout: post
category:
  - Discussões
  - Opiniao
  - Programacao
  - Python
  - Ruby
tags:
  - linguagens de programação
  - Perl
  - Python
  - Ruby
  - zen
post_format: [ ]
---
Aqui na nossa série de linguagens de programação (sem posts já faz um tempo), já falamos de [Ruby][1], mas ainda não de Python. O ideal seria falar de Python antes mas, graças a uma [palestra interessante][2] que assisti online, resolvi fazer alguns comentários e críticas a cada uma delas.

Antes de mais nada, é importante entender quais as bases e as motivações de cada uma dessas duas linguagens. Ambas as linguagens têm como metas permitir código bonito, legível e o mais simples possível. Mas o critério de bonito e legível difere para cada uma delas. De acordo com o [Zen do Python][3] (numa tradução livre):

> [...]  
> Casos especiais não são tão especiais para quebrarmos as regras.  
> [...]  
> Quando se deparar com uma ambiguidade, não ceda à tentação de tentar adivinhar.  
> Deveria haver uma, e preferencialmente só uma, maneira óbvia de fazer algo.  
> [...]  
> Se a implementação é difícil de explicar, não é uma boa ideia.  
> [...] 

Já o Ruby, [de acordo com o próprio criador Yukihiro Matsumoto][4]:

> [...] é simples na aparência, mas muito complexo no interior, tal como o corpo humano. 

Nota-se que isso contraria a parte da simplicidade de implementação do Zen do Python. E nota-se isso também em bibliotecas famosas escritas em Ruby, como o [ActiveRecord][5], por exemplo. Você já tentou entender a implementação da classe [ActiveRecord::Base][6]?

Além disso, Ruby herdou de Perl, uma de suas fontes de inspiração, a ideia de ter várias formas de fazer uma mesma coisa. E também tem alguns casos especiais de sintaxe, como a invocação de um *setter* (que pode ser com espaço antes do igual, apesar de o nome do *setter* não ter esse espaço), os parênteses opcionais na invocação de um método ou as chaves opcionais num hash passado como argumento.

**Agora, minha opinião**

Acho que é bom ter mais de um jeito de fazer a mesma coisa, como o Ruby possibilita. Um jeito só de fazer a mesma coisa, a meu ver, tem a vantagem de facilitar um pouco a leitura do código, graças à uniformidade. Mas, por outro lado, nos comunicamos uns com os outros numa língua que permite expressar uma mesma ideia de muitas formas diferentes, e mesmo assim nos entendemos, não? É claro que às vezes com alguma dificuldade, mas na maioria das vezes por causa da ambiguidade da língua. E liberdade de expressão também é importante em programação!

Por outro lado, as peculiaridades da sintaxe de Ruby não me agradam; acho que tornam a linguagem mais difícil de compreender. Os casos especiais são muitos e, às vezes, deixam o programador confuso quanto à necessidade de chaves, por exemplo.

Uma característica muito importante que a linguagem Ruby deveria ter, mas só Python tem, são argumentos rotulados. Em Ruby, costuma-se utilizar um hash para suprir essa necessidade, o que, convenhamos, não é muito elegante.

Um ponto sobre o qual ainda não tenho uma opinião muito elaborada é sobre a modificação de classes e métodos em tempo de execução. Em Ruby, ela é implícita: se você declarar uma classe com o mesmo nome de uma que já existe, você estará modificando a existente. Em Python, ela é explícita: você só pode modificar a classe existente se você escrever código específico para isso; se você declarar uma classe com o mesmo nome de uma já existente, você está criando outra classe. Por um lado, acho bom deixar explícito que você está modificando uma classe existente. Mas, por outro lado, faz sentido ter duas classes diferentes com o mesmo nome?

E você, qual a sua opinião? Quais são suas críticas a cada uma dessas linguagens? 
**Posts Relacionados:** 
*   No related posts



[Tweet][7] 





**Acompanhe-nos por [ RSS][8], por [Email][9] ou via [Twitter][10].**  
Veja como ter um desconto no [Dreamhost][11]: um excelente servidor web.

 [1]: http://vidageek.net/2008/11/24/linguagens-de-programacao-ruby/
 [2]: http://vimeo.com/9471538
 [3]: http://www.python.org/dev/peps/pep-0020/
 [4]: http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/2773
 [5]: http://ar.rubyonrails.org/
 [6]: http://api.rubyonrails.org/classes/ActiveRecord/Base.html
 [7]: https://twitter.com/share
 [8]: http://feeds.feedburner.com/VidaGeek
 [9]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [10]: http://twitter.com/blogvidageek
 [11]: http://vidageek.net/dreamhost/
