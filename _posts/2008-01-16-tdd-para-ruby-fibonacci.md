---
author: convidados
title: 'TDD para Ruby - Fibonacci'
excerpt:
layout: post
category:
  - Ruby
tags:
  - Ruby
post_format: [ ]
---
![Ruby][1]  
No livro Test-Driven Development By Example, Kent Beck mostra em um pequeno apêndice como criar a função que calcula o número de Fibonacci de forma recursiva através do Test-Driven Development(TDD, desenvolvimento direcionado por testes). Baseando-me neste exemplo, criei uma versão para Ruby.

Primeiro, gostariamos que fib(0) = 0. Para isso começamos a escrever o nosso teste:

 #!/usr/bin/ruby  
 require ‘test/unit’  
 class TestFibonacci < Test::Unit::TestCase  
  def test_fib  
   assert_equal(0,Fibonacci.fib(0));  
  end  
 end

Rodando o teste temos, como esperado, um erro já que não criamos a classe Fibonacci. Devemos fazer agora o mínimo para que os testes passem. Isso inclui em adicionar a classe Fibonacci e criar uma implementação do método self.fib.

 class Fibonacci  
  def self.fib(n)  
   return 0;  
  end  
 end

Rodando o teste descobrimos que está tudo bem. Podemos agora testar se fib(1) = 1, vamos modificar o teste anterior para incluir esta condição.:

  def test_fib  
   assert_equal(0,Fibonacci.fib(0));  
   assert_equal(1,Fibonacci.fib(1));  
  end

Que obviamente não passará. Podemos mudar o self.fib para a seguinte versão:

  def self.fib(n)  
   return 0 if(n == 0)  
   return 1  
  end

Os testes estão novamente passando, mas existe uma repetição entre eles, algo ruim de se fazer (use a metodologia DRY – Don’t Repeat Yourself). Vamos então refatorar o método test_fib:

  def test_fib0  
   cases = [[0,0],[1,1]]  
   cases.each do  
    |c|  
    assert_equal(c[1],Fibonacci.fib(c[0]))  
   end  
  end

Temos agora os casos de teste compostos de pares (n,fib(n)). Podemos agora adicionar o par (2,1) e rodar os testes para ver que o método continua funcionando. Vamos então adicionar mais um teste, o par (3,2), portanto temos cases = [[0,0],[1,1],[2,1],[3,2]]. O teste não passa, podemos modificar o código rapidamente para resolver este problema.

 def self.fib(n)  
  return 0 if(n == 0)  
  return 1 if(n <= 2)  
  return 2  
 end

Temos agora os testes passando e podemos generalizar para obter o resultado esperado. Ao invés de retornar 2, podemos retornar fib(n-1) + fib(n-2) (o passo completo seria 2 = 1 + 1 = fib(n-1) + 1 = fib(n-1) + fib(n-2) ). Abaixo está o código final:

 #!/usr/bin/ruby  
 require ‘test/unit’  
 class TestFibonacci < Test::Unit::TestCase  
  def test_fib0  
   cases = [[0,0],[1,1],[2,1],[3,2]]  
   cases.each do  
    |c|  
    assert_equal(c[1],Fibonacci.fib(c[0]))  
   end  
  end  
 end  
 class Fibonacci  
  def self.fib(n)  
   return 0 if(n == 0)  
   return 1 if(n <= 2)  
   return fib(n-1) + fib(n-2)  
  end  
 end

**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://vidageek.net/wp-content/uploads/2008/01/ruby.thumbnail.jpg
 [2]: https://twitter.com/share




