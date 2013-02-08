---
author: Jonas Abreu
title: Como migrar de SVN para GIT
layout: post
game: git
---

Sei que tem um monte de tutoriais por aí de como migrar de svn para git, mas não achei nenhum com tudo que eu precisasse e em português. Então aqui vai o meu :)

WARNING!!!! Se você tem um repositório svn público e vai migrar para o [github][1], use o script de migração que ele te oferece quando você cria um repositório lá.

*  Primeiro você deve instalar o git-svn. Não sei como instalar via apt, mas com o macports é um simples **sudo port install git-core +svn** (talvez você precise desinstalar o git-core antes de conseguir instalar. Se for o caso, sudo port uninstall git-core)
*  Crie um arquivo mapeando os [usuários do svn][2] para os do git. Algo como:
	
		jonas = Jonas Abreu <jonas@vidagek.net>
		usuario_svn = Nome Usuario <email@usuario.net>
    
* Dê o nome que quiser para o arquivo.
* Faça checkout com o git svn

		mkdir repo_temp
		cd repo_temp
		git svn init URL_DO_SEU_REPOSITORIO_SVN --no-metadata
		git config svn.authorsfile ARQUIVO_DE_MAPEAMENTO
		git svn fetch
        
É bem importante não esquecer do –no-metadata. Isso vai evitar que ele traga um monte de lixo (.svn, se não me engano) para sua máquina.

* Limpe a sujeira que o git svn colocou no seu repositório git local clonando ele.
	
		cd ..
		git clone repo_temp repo_final

* Altere a url da origem do seu repositório local:

		cd repo_final
		<SEU_EDITOR_FAVORITO> .git/config
        
    
* Troque a url:
    
		[remote "origin"]
			url = repo_temp
        
    
* pela url do seu repositório git:
    
		[remote "origin"]
			url = URL_DO_SEU_REPOSITORIO
        

*   Envie os dados para o seu servidor remoto: 

		git push origin master

Pronto. Seu repositório acabou de ser migrado de svn para git. Simples, fácil e rápido (a não ser que você tenha uns 10k commits. Aí vai demorar bastante. No meu caso demorou cerca de 4 horas o processo completo.) 
        
 [1]: http://github.com
 [2]: http://vidageek.net/2009/06/15/como-descobrir-todos-que-commitaram-em-um-repositorio-svn/

