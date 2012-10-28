---
author: convidados
title: Turbinando o Terminal
excerpt:
layout: post
category:
  - Gentoo
  - Linux
  - OpenSource
  - Tutoriais
  - Ubuntu
tags:
  - Gentoo
  - Linux
  - OpenSource
  - Tutoriais
  - Ubuntu
post_format: [ ]
---
O Terminal é uma das ferramentas mais interessantes do Linux, e mesmo que você tenha o X instalado, dominar o bash é muito útil para realizar tarefas de forma muito mais rápida. Programadores normalmente usam mais o terminal do que a interface gráfica, sendo que já presenciei um amigo usar o lynx por ser mais rápido do que abrir o firefox e entrar numa determinada página na qual ele não precisava visualizar imagens.

Quem usa muito o terminal normalmente acaba usando alguns *alias* para melhorar ainda mais o tempo de realizar tarefas. Alias são atalhos criados no terminal que permite renomear comandos, mas que são exclusivos para o terminal e a sessão atual, para que os mesmos se tornem permanentes é necessário “carrega-los” sempre que um terminal for aberto e isso é feito modificando o ~/.bashrc (existe um bashrc geral para o sistema no /etc/bash.bashrc no Ubuntu e no /etc/bash/bashrc no Gentoo).

Vamos primeiro salvar um backup do bashrc atual por segurança. Para isso digite:

`cp ~/.bashrc ~/.bashrc.bak`

Caso algo saia errado durante esse tutorial basta reescrever o bashrc antigo com:

`cp ~/.bashrc.bak ~/.bashrc`  
Para evitar ficar escrevendo diretamente no bashrc, que pode precisar ser atualizado pela distribuição, é melhor criar um arquivo a parte e referencia-lo no bashrc. Isso pode ser feito dessa forma:

`i``f [ -f ~/.bashrc ]; then<br />
source ~/.VidaGeek_bashrc<br />
fi`

O objetivo é criar atalhos para os comandos mais utilizados no terminal e podemos descobrir quais são esses comandos através deste comando:

`history | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr`

Para quem instala muita coisa no sistema provavelmente o comando mais utilizado seja o `sudo` pois ele é utilizados na administração do sistema (isso pode não ocorrer se você executa seus comandos como root). Podemos encurtar estes comandos que normalmente utilizam o sudo e ainda por cima precisam de vários parâmetros. Para criar estes atalhos adicione as linhas abaixo no arquivo `~/.VidaGeek_bashrc`. Os próximos comandos estão em duas versões, uma para Ubuntu e outra para Gentoo, mas podem ser alterados para refletir o gerenciador de pacotes da sua distribuição.

**Instalação**  
Ubuntu: `alias inst="sudo apt-get install -y"`  
Gentoo: `alias inst="sudo emerge"`

**Desinstalação**  
Ubuntu: `alias remp="sudo apt-get remove"`  
Gentoo: `alias remp="emerge -C"`

**Busca de pacotes**  
Ubuntu: `alias search="apt-cache search"`  
Gentoo: `alias search="emerge -s"`

**Atalhos para todas distribuições**  
Estes atalhos são para qualquer distribuição Linux podendo ser usados normalmente (apenas um detalhe: você precisa do gcc e g++ instalados caso use os atalhos de programação)

**Movimentação entre pastas**  
Mudando o ls para um arquivo por linha e arquivos ocultos: ` alias ls="ls -al"`  
clear com uma tecla: ` alias c="clear" `  
up para pasta anterios: `alias up="cd .."`  
home para voltar na pasta home: `alias home="cd ~"`  
disk para ir a raiz do sistema: `alias disk="cd /"`  
trash para limpar a lixeira: `alias trash="rm -fr ~/.Trash"`

**Comando seguros**  
Mudando o rm: `alias rm="rm -i"`  
Mudando o mv: `alias mv="mv -i" `

**Comandos para programadores**  
Compilando com ANSI-C: `alias ansi-gcc="gcc -Wall -ansi -pedantic"`  
Compilando com ANSI-C++: `alias ansi-gcc="g++ -Wall -ansi -pedantic"`

**Mudando o histórico**  
O histórico é muito útil para os viciados em terminal, pois com apenas algumas teclas nos poupamos o trabalho de reescrever uma linha inteira e possivelmente longa. Além das setas para cima e para baixo, podemos usar também o **ctrl+r** para buscar comandos digitados. Para aumentar o tamanho do seu histórico coloque as seguintes linhas no seu arquivo:  
`HISTFILESIZE=100000000<br />
HISTSIZE=100000`  
Mas algumas pessoas preferem que não haja histórico por uma questão de privacidade, caso você prefira desse jeito coloque:  
`HISTFILESIZE=0<br />
HISTSIZE=0`

**Completion**  
O completion (acessado pelo tab) é outra coisa muito interessante do terminal e normalmente as distribuições oferecem ainda  
pacotes com mais opções de completion (como o Gentoo através do gentoo-bashcomp). Mas algumas vezes o completion, mesmo instalado, precisa ser iniciado pelo bashrc, isso deve ser feito adicionando este código (não há problema em adiciona-lo se já estiver ativo):  
`if [ -f /etc/bash_completion ]; then<br />
. /etc/bash_completion<br />
fi`  
No caso do Gentoo, se você instalou o gentoo-bashcomp adicione também:`<br />
[[ -f /etc/profile.d/bash-completion ]] && \<br />
source /etc/profile.d/bash-completion<br />
`

**Encriptando e Desencriptando**  
É possivel encriptar e desencriptar um arquivo facilmente através dos comandos encrypt e decrypt seguido do arquivo adicionando estes comandos e garantindo que você tem o gpg instalado.  
`encrypt ()<br />
{<br />
gpg -ac --no-options "$1"<br />
}<br />
decrypt ()<br />
{<br />
gpg --no-options "$1"<br />
}`

**Mensagem Inicial**  
Você pode alterar a mensagem que aparece quando você abre o terminal. Para isso você pode usar comandos como o echo que imprime no terminal uma frase entre aspas. Uma outra coisa interessante é mostrar o fortune, um programa que mostra frases variadas, sempre que inicia o terminal. Abaixo há um exemplo com alguns comandos úteis.

`clear<br />
echo -ne "Hoje e "; date<br />
echo -e ""; cal ;<br />
fortune`

**Mensagem customizada de prompt**  
Por fim, podemos alterar o costumeiro rafael@PowerTux ~ $ por algo mais simpático, como [19:28:05 rafael ~]$, para isso adicione:

`PS1="[\t \u \W]\\$ "`

**Arquivos deste tutorial**  
Disponibilizei três versões do arquivo deste tutorial, uma para [Gentoo][1], uma para [Ubuntu][2] e uma para [qualquer distribuição][3] (pois não contém os comandos de instalação). Você precisará renomea-las para .VidaGeek_bashrc e colocar na sua home para poder usar.

Espero que este tutorial tenha sido útil para aprender um pouco mais sobre bash e para melhorar o seu desempenho no terminal.

Adaptado do [LifeHacker][4] 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][6], por [Email][7] ou via [Twitter][8].**  
Veja como ter um desconto no [Dreamhost][9]: um excelente servidor web.

 [1]: http://vidageek.net/public/VidaGeek_bashrc_gentoo "VidaGeek_bashrc para gentoo"
 [2]: http://vidageek.net/public/VidaGeek_bashrc_ubuntu "VidaGeek_bashrc para Ubuntu"
 [3]: http://vidageek.net/public/VidaGeek_bashrc_all "VidaGeek_bashrc para qualquer distribuição"
 [4]: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php "How To Life Hacker - How To: Turbocharge your terminal"
 [5]: https://twitter.com/share
 [6]: http://feeds.feedburner.com/VidaGeek



