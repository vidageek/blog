---
author: Jonas Abreu
title: Como exibir branch atual do git
excerpt:
layout: post
category:
  - Dicas
  - Programacao
tags:
  - bash
  - branch
  - git
  - grep
  - ps1
  - sed
  - terminal
post_format: [ ]
---
Umas das coisas legais que bash tem é uma variável que define como deve ser o prompt da linha de comando. Essa variavel de ambiente se chama PS1. Um dos usos mais incríveis que já vi dela foi o de mostrar em qual branch do git você está (e não mostrar nada quando você não está em um repositório).

Isso é a diferença entre

![terminal que não mostra o branch][1]

e isso

![terminal que mostra o branch][2]

Não sei quanto a vocês, mas eu realmente fico mais feliz com a segunda forma.

A minha variável PS1 é configurada da seguinte forma (mac – ~/.bash_profile – linux – ~/.bashrc):

    export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`git \\
    branch 2>/dev/null | grep \"^\*\" | \\
    sed -r \"s/\*\ (.*)/ \(\1\)/\"\`\[\033[37m\]$\[\033[00m\] "
    

Impossível de ler, correto? Vou quebrar em mais linhas para facilitar a vida.

    PS1="\[\033[38m\]\u";
    PS1="$PS1\[\033[32m\] \w";
    PS1="$PS1\[\033[31m\]";
    PS1="$PS1\`git branch 2>/dev/null | grep \"^\*\" | \\
                               sed -r \"s/\*\ (.*)/ \(\1\)/\"\`";
    export PS1="$PS1\[\033[37m\]$\[\033[00m\]";
    

Não testei, mas deve ter o mesmo efeito. Explicando um pouco da mágica:

1.  Essa sequência bizarra de caracteres (\[\033[38m\]) é a forma de definir que o que virá depois será impresso em branco, num terminal que permite coloração (o que realmente define a cor é o 38m. O resto é apenas a forma de indicar a mudança de cor). “\u”, na PS1, significa o usuário atual. 
2.  A próxima sequência de caracteres bizarros troca a cor para verde. “\w”, na PS1, é o seu path atual. 
3.  Troca a cor para vermelho. 
4.  Extrai o nome do branch (sendo executado em uma subshell. Para isso que servem os \`).</p> 
    1.  **git branch 2>/dev/null**: Imprime todos os branches do repositório onde você se encontra. Caso ocorra algum erro, a mensagem de erro será enviada para /dev/null, vulgo limbo (por isso nada será impresso nos outros diretórios). 
    2.  **grep “^\*”**: Me dá todas as linhas começadas por * . 
    3.  **sed -r \”s/\*\ (.*)/ \(\1\)/\”**: Novamente o grande monstro sed salva o dia. A regex que está ali pega o que vêm depois do espaço que está depois do * e imprime com parenteses em volta. 
5.  Muda a cor para branco, imprime $ (apenas para marcar o fim do prompt) e para de brincar com as cores do terminal, devolvendo o controle à shell.</p> 
    *   </ol> 
        A versão anterior que eu usava da PS1 usava ruby pra fazer essa mágica toda, mas dessa forma não depende mais do ruby instalado na máquina. 
        **Posts Relacionados:** 
        *   No related posts
        
        <g:plusone size="medium" count="false" href=""></g:plusone> 
        
        [Tweet][3] 
        
        
        
        
        



 [1]: http://vidageek.net/public/images/sem_branch.png
 [2]: http://vidageek.net/public/images/com_branch.png





