---
author: Jonas Abreu
title: HFS+ case insensitive?
excerpt:
layout: post
category:
  - Dicas
  - Mac
  - Programacao
tags: [ ]
post_format: [ ]
---
Fiz uma descoberta bem estranha.

Estava motando um script bash para verificar se a estrutura do [Performance Java][1] estava certa (sabe como é, viver sem testes é difícil depois que você vicia)

Criei um post em que coloquei uma categoria com letras maiúsculas. Rodei meu teste e ele passou, enquanto que eu esperava que ele falhasse.

Depois de debugar um pouco o script e constatar que ele estava correto (do meu ponto de vista), comecei a brincar com a ferramenta `test` e tive uma grande surpresa.

    
    $ touch bla.html
    $ test -e bla.html; echo $?
    $ 0 #ok. é o esperado
    $ test -e ble.html; echo $?
    $ 1 #também esperado porque o arquivo não existe
    $ test -e BLA.html; echo $?
    $ 0 #WTF?
    

Aparentemente o [HFS+ é case insensitive, mas guarda a informação de letras maiúsculas e minúsculas][2].

Decisão triste essa. E se você quiser deixar ele case sensitive? Precisa formatar o hd. 
**Posts Relacionados:** 
*   No related posts












 [1]: http://www.javaperformance.com.br
 [2]: http://apple.stackexchange.com/questions/22297/is-bash-in-osx-case-insensitive





