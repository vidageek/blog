---
author: Cecilia Fernandes
title: >
  Ubuntu 7.10 e o cedilha em teclado
  internacional

layout: post
category:
  - Dicas
  - Linux
  - Ubuntu
tags:
  - C
  - cedilha
  - Dicas
  - Guilherme-de-Almeida-Moreira
  - Guilherme-Moreira
  - Linux
  - Ubuntu
  - Ubuntu-7.10
  - US-International
post_format: [ ]
---
Guilherme de Almeida Moreira, um amigo nosso, passou pelo problema clássico de colocar para funcionar o cedilha no Ubuntu 7.10. Já que não encontrou informações de como resolver o problema na internet, ele nos enviou sua solução na esperança de ser útil para outras pessoas.

> Quem instalou o ubuntu 7.10 e tem um teclado *US International* pode ter enfrentado o mesmo problema que enfrentei: “ç”, o”c-cedilha”. E se, assim como eu, você só encontrou a famosa solução  
> de alterar o arquivo etc/gtk- 2.0/gtk.immodules e percebeu que ele simplesmente desapareceu, não se desespere! Ofereço uma solução muito parecida.
> 
> A idéia é a mesma: habilitar o cedilha para o idioma inglês, a única diferença é que agora o arquivo está em local diferente: /usr/lib/gtk-2.0/2.10.0/immodule-files.d/libgtk2.0-0.immodules
> 
> Como administrador, modifique o arquivo:
> 
>     sudo vim /usr/lib/gtk-2.0/2.10.0/immodule-files.d/libgtk2.0-0.immodules
> 
> Adicione a sigla “en” na linha que começa assim “cedilla” “Cedilla” “gtk20″ …
> 
> A linha fica assim:
> 
>     "cedilla" "Cedilla" "gtk20" "/usr/share/locale" "az:ca:co:fr:gv:oc:pt:sq:tr:wa:en"
> 
> Para salvar o arquivo no Vim, aperte “esc” para ir para o modo de comandos e, em seguida, **:wq**.
> 
> Faça logout e login e teste-o.
> 
> Qualquer dúvida poste aqui. Pode ser que esse erro seja por uma atualização do Gtk.
> 
> Guilherme de Almeida Moreira

Guilherme de Almeida Moreira é formando em Processamento de Dados pela FATEC-SP, é entusiasta do Ubuntu e trabalha como consultor pela [Caelum][1].

**Update: **O leitor Vitor Zeni nos ensinou a forma gráfica de se fazer essa mesma alteração. Veja abaixo:

> Muito boa a dica, mas eu resolvi o mesmo problema de outra forma, mais “amigável” digamos.
> 
> 1. Vá no menu Sistemas -> Preferências -> Teclado.  
> 2. Clique na aba “Disposições”  
> 3. Clique no botão “adicionar” logo abaixo da tela que mostra as disposições definidas.  
> 4. Escolha uma disposição que seja igual ao seu teclado, conferindo na tela o desenho mostrado.
> 
> No meu caso, uso um teclado Dell, que é padrão internacional, então no meu caso serviu bem a disposição “US English” com a variante “Alternative International (former us_intl)”.
> 
> Agora funciona tudo ok.

Obrigado, Victor! 

*   No related posts












 [1]: http://www.caelum.com.br





