---
author: Jonas Abreu
title: 'Dia C - Threads em C'
excerpt:
layout: post
category:
  - C
  - Dicas
  - Programacao
  - Tutoriais
tags:
  - C
  - Dicas
  - Programacao
  - Tutoriais
post_format: [ ]
---
Para deixar um sistema mais rápido (e muitas vezes mais “macio”) é necessário que você execute várias coisas ao mesmo tempo. Você não precisa fazer com que seu programa simplesmente pare de fazer algo simplesmente porque o usuário clicou em outro botão. Você também pode estar querendo aproveitar um segundo processador da máquina ou mesmo aumentar o número de acessos ao processador (é difícil fazer um jogo rodar quando o Windows come metade do sistema e o anti-vírus mastiga o resto). O que fazer então? Bom, você poderia pedir pro usuário fechar o anti-vírus (o que ele não vai fazer) ou mandar ele apelar pro bom senso e desligar o tocador de mp3, Word, Messenger, Internet Explorer e todas as tranqueiras que ele tem em stand-by para então rodar o seu programa. Esquece… Isso não vai acontecer. O que nós programadores podemos fazer, então? Simples. Podemos dividir o nosso programa em várias threads e aumentar a prioridade delas, aumentando o nosso acesso ao(s) processador(es) e diminuindo o dos outros programas. Mas vamos com calma.

Uma thread é basicamente um outro programa rodando mas que tem os mesmos direitos de acesso à memória que o programa que carrega ela (que seria a thread principal). Esta não é a definição formal. É mais uma utilidade prática do negócio. Como ele tem os mesmos direitos de acesso à memória, compartilhar dados entre os dois programas é fácil. E cada um tem sua própria pilha, então nem precisa se preocupar com um eventual estouro dela (não abusem dessa frase, **é** possível estourar a pilha, apenas menos provável).

C não possui nenhum suporte nativo à threads (isso é algo que depende muito do kernel do sistema operacional, pois é ele quem coordena os processos – entenda como threads + programas – e verifica quando estes vão pro processador e para qual processador vão). Então é necessário que você utilize uma biblioteca do sistema operacional.

O Windows utiliza o header **windows.h** (sugestivo, não?), mas qualquer coisa que você compile que tenha incluído esse header irá demorar milênios para compilar, pois esse header é realmente imenso. Para evitar isso, defina a constante WIN32\_LEAN\_AND_MEAN antes de incluir o header e assim você evitará incluir um monte de coisas nas quais você provavelmente não está interessado.

Linux e MacOS X utilizam a **pthread.h**. MacOS Clássico não possui suporte nativo, mas difícilmente você irá produzir uma aplicação pra clássico hoje em dia.

Mas e se eu quiser produzir uma aplicação portável entre alguns desses sistemas, o que que eu faço? Vou ter que forçar a portabilidade “no braço” com #ifdef ? Não. Você pode usar uma das seguintes bibliotecas:

*   [SDL][1] : A biblioteca SDL possui suporte à threads e é portável para esses sistemas que eu citei acima a vários outros.
*   pthread : pthread? Sim. A pthread possui ports para Windows também. A vantagem é que a pthread é implementada e possui todas as funcionalidades em qualquer um dos sistemas. A SDL_Thread possui apenas as funcionalidades comuns desses sistemas. (Não coloquei o link porque Pthread é a especificação Posix para Threads. Portanto qualquer implementação que siga essas especificações é uma pthread.)
*   [pth][2] : A pth é implementação de threads do projeto GNU, que roda em vários sistemas.</a> 
    *   Existem algumas outras, mas essas provávelmente são as três mais poderosas</ul> 
    Mas antes que você pense que threads são a solução para todos os problemas, tome cuidado. Thread é uma ferramenta poderosa, mas é bem complicado de utilizá-la. Recomendo que estude seriamente programação concorrente antes de se aventurar pelos incontáveis erros de sincronismo praticamente indetectáveis que as threads produzem.
    
    Próxima semana: Ponteiros e Aritmética de Ponteiros. 
    **Posts Relacionados:** 
    *   No related posts
    
    <g:plusone size="medium" count="false" href=""></g:plusone> 
    
    [Tweet][3] 
    
    
    
    
    
    **Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
    Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://www.libsdl.org
 [2]: http://www.gnu.org/software/pth/
 [3]: https://twitter.com/share
 [4]: http://feeds.feedburner.com/VidaGeek
 [5]: http://feedburner.google.com/fb/a/mailverify?uri=VidaGeek&loc=pt_BR
 [6]: http://twitter.com/blogvidageek
 [7]: http://vidageek.net/dreamhost/