---
author: Jonas Abreu
title: Como migrar de SVN para GIT
excerpt:
layout: post
category:
  - Dicas
  - OpenSource
  - Programacao
tags:
  - git
  - github
  - svn
post_format: [ ]
---
Sei que tem um monte de tutoriais por aí de como migrar de svn para git, mas não achei nenhum com tudo que eu precisasse e em português. Então aqui vai o meu :)

WARNING!!!! Se você tem um repositório svn público e vai migrar para o [github][1], use o script de migração que ele te oferece quando você cria um repositório lá.

1.  Primeiro você deve instalar o git-svn. Não sei como instalar via apt, mas com o macports é um simples **sudo port install git-core +svn** (talvez você precise desinstalar o git-core antes de conseguir instalar. Se for o caso, sudo port uninstall git-core)</p> 
2.  Crie um arquivo mapeando os [usuários do svn][2] para os do git. Algo como: </p> 
        jonas = Jonas Abreu <jonas@vidagek.net>
        usuario_svn = Nome Usuario <email@usuario.net>
        
    
    Dê o nome que quiser para o arquivo. </li> 
    *   Faça checkout com o git svn</p> 
            mkdir repo_temp
            cd repo_temp
            git svn init URL_DO_SEU_REPOSITORIO_SVN --no-metadata
            git config svn.authorsfile ARQUIVO_DE_MAPEAMENTO
            git svn fetch
            
        
        É bem importante não esquecer do –no-metadata. Isso vai evitar que ele traga um monte de lixo (.svn, se não me engano) para sua máquina. </li> 
        *   Limpe a sujeira que o git svn colocou no seu repositório git local clonando ele.</p> 
                cd ..
                git clone repo_temp repo_final
                
        
        *   Altere a url da origem do seu repositório local:</p> 
                cd repo_final
                <SEU_EDITOR_FAVORITO> .git/config
                
            
            Troque a url:
            
                [remote "origin"]
                      url = repo_temp
                
            
            pela url do seu repositório git:
            
                [remote "origin"]
                       url = URL_DO_SEU_REPOSITORIO
                
        
        *   Envie os dados para o seu servidor remoto:</p> 
                git push origin master
                </ol> 
        
        Pronto. Seu repositório acabou de ser migrado de svn para git. Simples, fácil e rápido (a não ser que você tenha uns 10k commits. Aí vai demorar bastante. No meu caso demorou cerca de 4 horas o processo completo.) 
        **Posts Relacionados:** 
        *   No related posts
        
        <g:plusone size="medium" count="false" href=""></g:plusone> 
        
        [Tweet][3] 
        
        
        
        
        
        **Acompanhe-nos por [ RSS][4], por [Email][5] ou via [Twitter][6].**  
        Veja como ter um desconto no [Dreamhost][7]: um excelente servidor web.

 [1]: http://github.com
 [2]: http://vidageek.net/2009/06/15/como-descobrir-todos-que-commitaram-em-um-repositorio-svn/
 [3]: https://twitter.com/share




