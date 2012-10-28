---
author: convidados
title: Substituindo valores de um Hash em Ruby

layout: post
category:
  - Dicas
  - Ruby
tags:
  - BDD
  - Dicas
  - hash
  - Merge
  - Rails
  - Rspec
  - Ruby
post_format: [ ]
---
![Ruby Logo][1]

Recentemente, ao criar utilizar o rspec para fazer BDD num projeto em Ruby on Rails, encontrei um problema que não aparentava ter uma solução elegante. Eu tinha um hash @valid_attributes com valores válidos para o meu modelo e gostaria de modificar apenas um deles para fazer um teste que quebrasse minha aplicação. A primeira solução possível foi: 

    it "should verify if name is not empty" do
      @valid_attributes[:name] = nil
      Account.new(@valid_attributes).should_not be_valid
    end
    

Mas uma coisa me incomodou muito neste teste. Eu mudei a semântica da minha variável. Ela passou a conter um atributo inválido, mas continuava com o mesmo nome. Esta é uma péssima prática de programação, já que reutilizamos uma variável para outra coisa, perdendo o significado do nome. Portanto, apesar de parece inútil, o segundo passo foi: 

    it "should verify if name is not empty" do
      invalid_attributes = @valid_attributes
      invalid_attributes[:name] = nil
      Account.new(invalid_attributes).should_not be_valid
    end
    

Mas agora o teste estava muito longo e parecia besteira o que estava sendo feito. Procurei na API do Ruby para tentar achar alguma solução elegante e com um pouco de trabalho cheguei a seguinte solução: 

    it "should verify if name is not empty" do
      Account.new(change_attribute(:name)).should_not be_valid
    end
    
    def change_attribute(attribute, value = nil)
      {attribute => value}.merge(@valid_attributes) {|k, o, n| o}
    end
    

O método merge de um hash permite a fusão de um segundo hash ao primeiro, adicionando novos pares de chave – valor e substituindo os valores das chaves já existentes, mas se passarmos um bloco (como no exemplo acima) podemos escolher qual valor iremos utilizar para chaves repetidas. Indo um pouco além do usual, minha idéia foi substituir um par já existente – o que poderia ser feito para quantos pares fossem desejados. Espero que essa dica possa ser útil, já que o merge é um método muito interessante. 

**Posts Relacionados:** 
*   No related posts












 [1]: http://vidageek.net/wp-content/uploads/2009/02/ruby-logo.gif





