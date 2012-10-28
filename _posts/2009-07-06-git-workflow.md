---
author: Jonas Abreu
title: Git Workflow

layout: post
category:
  - Dicas
  - Programacao
tags:
  - branch
  - checkout
  - clone
  - git
  - master
  - Merge
  - mergetool
  - origin
  - rebase
  - workflow
post_format: [ ]
---
Recentemente passei a utlizar git em todos os meus projetos (depois de sofrer muito com a lentidão do sourceforge e outros repositórios svn).

Me atrapalhei um pouco no começo por não entender os conceitos por trás de repositórios distribuídos, mas no fim das contas o que realmente era importante é que o meu fluxo de trabalho tinha mudado e eu não estava entendendo isso direito até eu pedir para o [Fábio Kung][1] sentar do meu lado e me explicar o workflow com o git. Como muitos não tem a chance de fazer isso, aqui fica o que eu aprendi (e estou usando com frequência agora).

1.  **Clonar um repositório**: Antes de mais nada você precisa ter um repositório para trabalhar. Com git, você faz isso clonando um repositório já existente (semelhante ao checkout do svn)</p> 
        git clone URL_REPOSITORIO PASTA_LOCAL_PARA_ARQUIVOS
        
    
    Com isso foi criado o seu branch principal, chamado master. </li> 
    *   **Criar um branch de trabalho**: Uma das maiores vantagens do git é a facilidade com que você pode trocar de branch a fazer merge. Se você não usar branch, perde muito do que o git te proporciona.</p> 
            git checkout -b work
            
        
        checkout é o comando para você trocar de branch. Se você acrescentar um “-b”, ele também cria o branch pra você. Chamei meu branch de work, mas ele poderia ter qualquer outro nome. </li> 
        *   **Programe e faça commits pequenos**: Como os commits feitos em git são sempre locais, você pode fazer commits bem pequenos, que são bem mais fáceis de fazer merge caso ocorra um conflito.</p> 
                git commit -a -m "mensagem de commit"
                
            
            Lembrem-se sempre de que mensagens de commit são importantes. Escreva mensagens que esclarecem o que foi feito.  
            Além disso, a flag “-a” que eu coloquei ali indica para o git commitar todas as modificações que foram feitas. Se você quiser algo mais granular, pode usar:
            
                git add NOME_DO_ARQUIVO
                
            
            ou
            
                git add -i
                
            
            No qual você pode escolher os arquivos a commitar. Bem interessante.  
            Não esqueça de fazer o commit sem o “-a” depois se for fazer assim. </li> 
            *   **Download de alterações que outras pessoas com acesso ao repositório tenham feito**: Você não trabalha sozinho em geral e sempre que você for enviar algo para o repositório alguém já terá enviado antes. O que vamos fazer agora é trazer essas atualizações.</p> 
                    git checkout master
                    git pull origin master
                    
                
                Na primeira vez que você tentar dar pull você tem que informar de onde (origin) e para onde (master). Depois você pode apenas usar git pull, porque o git é espertinho e lembra o que você quer. </li> 
                *   **Rebase do work**: Como todas as suas modificações estão no work, você conseguiu trazer as modificações para a máquina, mas agora seu branch work está desatualizado com relação ao master. Essa é a maior maravilha do git. Você vai temporariamente remover as modificações do work, aplicar os commits que estão no master e reaplicar seus commits.</p> 
                        git checkout work
                        git rebase master
                        
                
                *   **Resolvendo os conflitos**: Pode acontecer do git não conseguir resolver algum dos conflitos de modificação. Quando isso ocorre ele para o rebase para que você resolva os conflitos, commit a commit e não tudo de uma vez como o svn.</p> 
                        git mergetool
                        git rebase --continue
                        
                    
                    O git mergetool abre uma ferramenta visual para merging (facilita muito a vida). O git rebase –continue fala para continuar o rebase. </li> 
                    *   **Enviando modificações para o servidor remoto**: Quando você termina o rebase, seu repositório está novamente compatível com o do servidor remoto. Basta agora aplicar essas modificações no master e enviar para o remoto.</p> 
                            git checkout master
                            git merge work
                            git push origin master
                            
                        
                        O comando git merge work aplica seus commits no master. O git push envia para o servidor remoto. Novamente, na primeira vez que você tentar isso, o git ainda não sabe o que nem para onde você quer mandar. Por isso você precisa informar. </li> </ol> 
                        É um pouco mais trabalhoso que o svn, mas os ganhos são significativos. Vale a pena usar git direito. Eu não volto mais pro svn.
                        
                        **Posts Relacionados:** 
                        *   No related posts
                        
                        <g:plusone size="medium" count="false" href=""></g:plusone> 
                        
                        [Tweet][2] 
                        
                        
                        
                        
                        



 [1]: http://fabiokung.com





