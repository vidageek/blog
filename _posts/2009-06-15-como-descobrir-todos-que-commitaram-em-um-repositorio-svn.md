---
author: Jonas Abreu
title: >
  Como descobrir todos que commitaram em
  um repositório SVN
excerpt:
layout: post
category:
  - Dicas
  - Linux
  - Programacao
tags:
  - bash
  - grep
  - log
  - sed
  - sort
  - svn
  - uniq
  - usuario
post_format: [ ]
---
Recentemente escrevi um post sobre [como migrar seu repositório svn para o git][1]. Em um dos passos falo pra você criar uma lista de mapeamento dos seus usuários do svn para os do git. O único problema disso é descobrir quem são eles. Aqui vai um one-liner de bash que resolve isso :)

    
    svn log | grep "^r[0-9]" | \\
    sed -E "s/^.*\|(.*)\|.*\|.*$/\1/" | \\
    sort | uniq > seu_arquivo_com_os_usuarios
    

Explicação da bizarrice acima:

1.  **svn log**: Exibe todo o log de commits feitos naquele repositório. 
2.  **grep “^r[0-9]“**: Pega todas as linhas iniciadas com r seguido por um número (header de cada commit do svn) 
3.  **sed -E “s/^.\*\|(.\*)\|.\*\|.\*$/\1/”**: Roda o monstro chamado sed em modo estendido e captura o nome dos usuários (conte o número de pipes) 
4.  **sort**: Ordena a lista com os usuários que comitaram. 
5.  **uniq**: elimina todas as duplicatas deixando apenas uma cópia de cada usuário (só funciona em listas ordenadas. Por isso o sort anterior). 

Tentei fazer usando o comando **cut** no lugar do sed, mas o cut desistia no meio do caminho por causa de caracteres estranhos. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][3], por [Email][4] ou via [Twitter][5].**  
Veja como ter um desconto no [Dreamhost][6]: um excelente servidor web.

 [1]: http://vidageek.net/2009/06/08/como-migrar-de-svn-para-git/
 [2]: https://twitter.com/share
 [3]: http://feeds.feedburner.com/VidaGeek



