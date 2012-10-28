---
author: fabs
title: Ruby Method Finder

layout: post
category:
  - Programacao
  - Ruby
tags:
  - hacks
  - Ruby
  - smaltalk
  - tricks
post_format: [ ]
---
![][1]Eu nunca tinha experimentado [SmallTalk][2] antes do [Dojo][3] da semana passada aqui no [ime][4]. Confesso que a sintaxe muito intuitiva as vezes deixava a desejar, expressando mensagens do tipo “should not do: #not” ou semelhantes.

Entretanto, uma funcionalidade do [Squeak][5] me atraiu bastante, chamava-se MethodFinder. Como você pode ver na imagem ao lado. Nessa “janelinha”, ao se escrever:

**2. 2. 4**

Aparece a lista de métodos que podem ser chamados no objeto **2**, passando o parâmetro **2** (podiam ser mais) e que devolvem o valor **4** como resultado, que são.

* (vezes)  
+ (mais)  
raisedTo (elevado a ..)  
raisedToInteger

Decidi então implementar algo em ruby, fiz durante uma aula de concorrentes portanto não está bem escrito, mas funciona :-). O resultado chama-se method_finder pode ser obtido no [github][6]. Para usar basta fazer o “require” do arquivo method\_finder.rb, ele vai criar uma função no kernel do ruby chamada match\_method. Vejam os resultados:

require ‘method_finder’ #=> true  
match_method(2,[2],4) #=> ["*", "**", "+"]  
match_method([1],[2],[1,2]) #=> ["<<", "push"]  
match_method([1],[2,3],[1,2,3]) #=> ["push"]  
match_method([3,2,1],[],[1,2,3]) #=> ["reverse", "reverse!", "sort", "sort!"]

Ainda não suporta blocos, bem como preciso fazer um gem disso eventualmente. Contribuições aceitas.

![][7]


*   No related posts












 [1]: http://vidageek.net/wp-content/uploads/2009/03/picture-7.png
 [2]: http://www.smalltalk.org/main/
 [3]: http://www.dojosp.org/?p=76
 [4]: http://www.ime.usp.br/
 [5]: http://www.squeak.org/
 [6]: http://github.com/Fabs/method_finder/tree/master
 [7]: http://img.zemanta.com/pixy.gif?x-id=3e3b3307-a63f-4b78-85d6-bc64266e9b2d





