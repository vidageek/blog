---
author: Luiz
title: Uma gem para testar aplicações que se comunicam com a Internet
layout: post

---
Aplicações para a Internet que se comunicam umas com as outras é algo mais do que comum. Ou sua aplicação consome algo que outra produz ou ela produz algo para outra consumir.

É bem fácil testar o que sua aplicação produz. Basta subir um servidor local, fazer uma requisição para o endereço correspondente e processar o resultado. Mas, por outro lado, como testar que sua aplicação consome o que outra produz adequadamente?

É claro que não vamos querer depender da aplicação remota de verdade. Queremos deixar os testes automatizados o mais isolados possível dos recursos externos. Então vamos, provavelmente, querer que o objeto responsável por fazer as requisições para fora não as faça de verdade e que devolva dados semelhantes aos da aplicação real.

Um jeito de fazer isso seria “embrulhar” a comunicação com a Internet numa classe nossa e, nos testes, *[mockar][1]* essa classe e [passar][2] essa classe *mockada* para as classes (ou os métodos) que precisam dela. É possível fazer isso em qualquer linguagem que suporte [orientação a objetos][3].

Em Ruby ainda temos uma outra possibilidade. Como as [classes são abertas][4], podemos re-escrever os métodos da classe [Net::HTTP][5], por exemplo. Assim, não precisamos criar um embrulho; podemos utilizar sempre a classe do sistema.

Pois também não precisamos fazer isso na mão. A gem [FakeWeb][6] permite *mockar* requisições para determinadas [URI][7]s com um código bastante sucinto. Por exemplo, se você quiser que seu programa receba “olá mundo” quando fizer uma requisição do tipo [GET][8] para a URI http://foo.com/bar, basta escrever antes do código que executa a requisição:

`<br />
FakeWeb.register_uri(:get, "http://foo.com/bar", :body => "olá mundo")<br />
`

Em Java também é possível fazer algo parecido com um pouco de magia negra, desde que controlemos a criação do objeto responsável pela requisição. Mas, a meu ver, a primeira abordagem resulta num código mais desacoplado. Qual a sua opinião? 














 [1]: http://pt.wikipedia.org/wiki/Mock_Object
 [2]: http://pt.wikipedia.org/wiki/Inje%C3%A7%C3%A3o_de_depend%C3%AAncia
 [3]: http://pt.wikipedia.org/wiki/Orienta%C3%A7%C3%A3o_a_objetos
 [4]: http://andersonleiteblog.wordpress.com/2010/02/09/metaprogramacao-ruby-object-model/
 [5]: http://ruby-doc.org/core/classes/Net/HTTP.html
 [6]: http://fakeweb.rubyforge.org/
 [7]: http://pt.wikipedia.org/wiki/URI
 [8]: http://pt.wikipedia.org/wiki/Hypertext_Transfer_Protocol#M.C3.A9todos





