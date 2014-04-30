---
layout: post
title: Como criar um projeto ruby
author: Jonas Abreu
---

Quem me conhece sabe que não sou muito fã de ruby, mas uso [jekyll][2] em vários sites que 
mantenho. Um problema que tenho encontrado é que se você instala ruby via `apt-get`, 
basicamente você está preso (ok. nem tanto mas você entendeu) à uma versão de ruby.
Pra evitar isso, existe uma ferramenta chamada `rvm`.

## RVM

O RVM é uma ferramenta de gerenciamento de versões de ruby. Simples assim. Para instalá-lo
basta ir ao [site do rvm][1] e rodar o comando de instalação dele. 

Mas, se você usa gterm (como eu), ele exige que você faça uma mudança no seu terminal se 
não quiser receber uma mensagem bem clara de que fez algo errado ("RVM is not a function" - 
realmente muito claro).

Basicamente você precisa mudar o seu terminal para que ele carregue o bash como uma login 
shell. Você faz isso marcando `Edit > Profile Preferences > Title and Command > Run 
command as login shell`.

E se você por acaso modificou o seu [terminal colocando variáveis][3] e comandos no seu 
`~/.bashrc`, suas modificações simplesmente vão parar de funcionar, porque o .bashrc
não é carregado em uma login shell. Para resolver isso, coloquei no meu `~/.bash_profile`
a seguinte linha:

    source ~/.bashrc

Que força a carga do `.bashrc`.

## Dependências do projeto

Agora que o RVM está instalado e seu terminal está funcionando normalmente, falta descrever
quais são as dependências do projeto. Crie um arquivo chamado `Gemfile` e coloque

    source "https://rubygems.org"

    ruby '2.1.0' # versão de ruby que seu projeto usa

    gem 'sua_gem1', 'versão da gem 1'
    gem 'sua_gem2', 'versão da gem 2'
    gem 'sua_gem3', 'versão da gem 3'
    gem 'sua_gem4', 'versão da gem 4'

Feito isso, basta rodar `bundle install` e tudo estará disponível quando você estiver
dentro da pasta  (ou alguma sub-pasta) do seu projeto.

A sintaxe completa do arquivo você encontra no [site do bundler][4]

## Coisas chatas

Tirando o problema com a instalação do rvm que comentei, alguns outros pontos chatos:

- O RVM funciona mexendo no seu path, mas não apenas isso. Quando você entra na pasta
usando o comando `cd`, ele muda o seu path para usar o ruby certo. Isso significa que
ele mudou o meu comando `cd`, o que não me parece muito razoável (é um mokey patching
na shell...)
- Sempre lembre de atualizar o seu RVM com `rvm get stable`. Eu tinha uma instalação 
antiga e quando pedi para instalar o ruby `2.1.0`, ele instalou o `2.1.0-preview1`.
- Ele não instala o ruby sozinho. Se você coloca um ruby que ainda não tenha instalado,
vai ter que rodar `rvm install VERSAO` para que ele instale.



[1]: http://rvm.io/
[2]: http://www.vidageek.net/2012/04/04/jekyll/
[3]: http://www.vidageek.net/2009/07/20/como-exibir-branch-atual-do-git/
[4]: http://bundler.io/v1.3/gemfile.html
