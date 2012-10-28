---
author: Jonas Abreu
title: 'Um pouco de Bash - Parte I'
excerpt:
layout: post
category:
  - Linux
  - Tutoriais
tags:
  - Linux
  - Tutoriais
post_format: [ ]
---
Este aqui é o primeiro post de uma espécie de guia sobre ferramentas da shell e um pouco de scripts (aqui darei ênfase na **B**ourne **A**gain **Sh**ell – Bash). A cada post (provavelmente farei mais de um por semana) falarei de cerca de três ou quatro ferramentas, começando pelas ferramentas mais básicas (cd, cp, rm, etc) até chegar aos scripts. Não pretendo cobrir todas as ferramentas, mas dar uma boa base para aqueles que estão começando a conhecer e a se apaixonar por sistemas Unix.

Antes de mais nada, é preciso abrir uma shell. Como fazer isso? Depende. Se você usa MacOS X, abra uma janela do Finder, vá em Applications, Utilities e abra Terminal. Usuários de Linux podem abrir um terminal (xterm, gterm, kterm, rxvt, ou qualquer outro) ou simplesmente segurar ctrl + alt + F1 (ou F2, F3 … F6). Usuários de Windows, acompanhem o tutorial Guia Linux (aqui no vidageek.net mesmo), escrito pelo Rafael e instalem Linux em suas máquinas.

Agora precisamos verificar qual é a shell que você está usando. Digite:  
echo $SHELL

Se aparecer /bin/bash, ótimo. Você já está rodando bash como sua shell. Caso contrário digite:  
bash

Esse comando deve iniciar uma shell bash para você. Caso apareça uma mensagem de erro, pode ser que você precise instalar bash, mas acho isso bem improvável.

Antes que eu esqueça, para executar algum comando na sua shell, faça assim:  
comando argumentos  
Simples, não?

Agora que já temos uma shell, vamos aos primeiros comandos:

*   **man** 
    Provavelmente este é o comando que você mais vai usar quando estiver aprendendo a usar a shell (e vai usar muito depois disso também). O **man** exibe uma página com informações sobre o comando passado como parâmetro logo após ele. 
    
    **Opções:**
    
    O man aceita uma infinidade de opções, mas normalmente o único parâmetro que você passará será o comando que você quer saber como funciona. 
    
    **Exemplo:**
    
    man man 
    
    **Nota:**
    
    Para sair do man, aperte “q”, sem as aspas. 

*   **ls** 
    O ls (**l**i**s**t – liste) serve para mostrar os arquivos (e links) de alguma pasta. Quando chamado sem argumentos, ele lista a pasta em que você está no momento. Se algum dos argumentos for o caminho para uma pasta(1), ele exibirá o conteúdo daquela pasta. 
    
    **Opções(2):**
    
    Poucas letras não são opções do ls (apenas duas). Vou citar as mais comuns:
    
    *   **-l **: Exibe informações sobre as restrições de acesso dos arquivos, tamanho, data de modificação e outros.
    *   **-h **: Exibe os números de forma a facilitar a leitura (human readable – legível para humanos)
    *   **-a e -A**: Exibe todos os arquivos, inclusive os ocultos. A diferença entre eles é que ‘a’ mostra os links ‘.’ e ‘..’.
    *   **-R **: Lista além dos arquivos que estão na pasta, todas as pastas que estão dentro dela (recursivo).
    *   **-S **: Lista os arquivos em ordem de tamanho
    *   **–color=auto e -G**: Ativa o modo de cores do ls. A primeira opção é para Linux e a segunda para MacOS X
    
    **Exemplo(3):**
    
    ls -lhA /usr  
    ls -R  
    ls -lhaS ~/ 

*   **cd** 
    O cd (**c**hange **d**irectory) serve para que você mude de pasta ou navegue por links especificados como argumentos. 
    
    **Opções:**
    
    O cd não possui opções, mas ele possui dois comportamentos não triviais acionados com os seguintes argumentos:
    
    *   ** . **: Ele muda para a própria pasta
    *   ** .. **: Ele muda para a pasta hierarquicamente acima dele 
    *   ** – **: Ele muda para a pasta que você esteve antes da pasta atual
    
    **Exemplo**
    
    cd ..  
    cd -  
    cd /usr  
    cd /  
    cd ~/ 

Como usei alguns termos que talvez você não conheça, aqui vão umas pequenas notas:

*   **(1)**: O caminho para pasta pode ser simplesmente o nome dela (se ela estiver “dentro” da sua pasta) ou a sequência de pastas que ele tem que tomar a partir da atual até a que você quer (endereço relativo). Também é possível especificar um caminho de pasta absoluto, baseado na pasta ‘/’
*   **(2)**: As opções geralmente podem ser combinadas como nos exemplos sobre o comando ls. (veja o man do comando para maiores informações).
*   **(3)**: O caractere ‘~’ é um alias para a sua pasta raiz. Digite ‘echo ~’ para ver.

Próximo post: mkdir, cp, mv, rm e rmdir. 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][2], por [Email][3] ou via [Twitter][4].**  
Veja como ter um desconto no [Dreamhost][5]: um excelente servidor web.

 [1]: https://twitter.com/share
 [2]: http://feeds.feedburner.com/VidaGeek



