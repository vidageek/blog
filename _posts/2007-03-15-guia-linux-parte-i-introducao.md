---
author: convidados
title: 'Guia Linux - Parte I: Introdução'

layout: post
category:
  - Gentoo
  - Linux
tags:
  - Gentoo
  - Linux
post_format: [ ]
---
Esta é a primeira parte de um guia que pretende mostrar como instalar uma distribuição Linux em sua máquina, possibilitando que você tenha um sistema completamente funcional, com todas as ferramentas que você pode precisar e sem nenhum custo, exceto, talvez algumas horas de aprendizado.

Esse guia não tem o objetivo de ser um tutorial, pois já existem muitas páginas de como instalar o Linux em sua máquina. Ele é na verdade um *roadmap* (mapa de estrada) que tem como objetivo indicar referências para as informações necessárias para a instalação de um sistema open-source funcional. Todos os passos desse guia serão executados na mesma máquina com a mesma instalação, e portanto, conforme o guia se desenvolver o sistema também melhorará.

Todos os problemas ocorridos por causa de Hardware, configuração, falta de atualização dos tutoriais utilizados, etc, serão abordados. Nem sempre a solução de um problema será igual para todos, e nem sempre exisitirá essa solução. Mas todos os problemas serão mencionados e suas possiveis correções.

A distribuição a ser usada será o **Gentoo** ([http://www.gentoo.org/][1]) por simples preferência pessoal. Ela é considerada uma distribuição forte, porém díficil. Eu não vejo dessa forma, a instalação com o *LiveCD* é feita facilmente e a instalação manual requer apenas a leitura do manual. Para instalação de softwares ela utiliza o **Portage**, acessado pelo comando ***emerge*** que permite a fácil instalação da maior parte dos aplicativos. Aqui surge uma diferença, na minha opinião, fundamental: os softwares instalados com o *emerge* são compilados na sua máquina, possibilitando assim uma alta performace. Muitos gerenciadores de pacotes trabalham principalmente com arquivos já compilados, feitos para sistemas genéricos, e portanto, não otimizados para o seu sitema.

**Instalando o Sistema**

**1. Baixando a distribuição:** Em [http://www.gentoo.org/main/en/where.xml][2] você encontra as opções de download para várias plataformas. Os usuários de computadores PC de 32 bits devem escolher uma imagem para x86, os usuários com processadores 64 bits devem escolher amd64 (mesmo que seu processador seja Intel). Você tem agora duas opções, com suas vantagens e desvantagens:

*   **Minimal:** O CD contém apenas o necessário para rodar o sistema inicial, sendo que todo o seu sistema será baixado da internet durante os primeiros passos da instalação. A instalação é toda em modo texto e manual, por isso pode ser difícil e intimidadora na primeira vez. Você terá que ler todo o manual para conseguir instalar mesmo que já tenha usado o Linux antes. Após a instalação você terá que configurar o ambiente gráfico. A vantagem é que todo o seu sistema vai ser compilado especificamente para a sua máquina.
*   **LiveCD:** O CD contém, além do necessário para a instalação, um ambiente gráfico e um script de instalação amigável. A instalação é normalmente em modo gráfico, mas pode ser feita em modo texto também. A instalação será bem mais fácil do que a manual, e deixará o ambiente gráfico funcionando após a instalação. Você pode também usar o ambiente gráfico durante a instalação, por exemplo para ler este post. Mas pro outro lado o sistema será instalado com softwares já compilados e seu sistema não será muito otimizado.

Eu particulamente uso o **Minimal**, já fiz algumas instalações com o LiveCD quando estava com problemas com o modo gráfico. Se tiver tempo e paciência use a Minimal, se não tiver nenhum dos dois ou for um iniciante em Linux e estiver inseguro use o LiveCD. Mais sobre as diferenças em [http://www.gentoo.org/doc/pt_br/handbook/handbook-x86.xml?part=1&chap=2][3]

**Manual de Instalação – Minimal:**

*   Em Inglês: [http://www.gentoo.org/doc/en/handbook/index.xml][4]
*   Em Português: [http://www.gentoo.org/doc/pt_br/handbook/][5] (normalmente está um pouco desatualizada)

**Manual de Instalação – LiveCD:**

*   Em Inglês: [http://www.gentoo.org/doc/en/handbook/2006.1/handbook-x86.xml][6]

**Dicas:**

*   O **cfdisk** faz particionamente igual ao **fdisk**, mas é mais intuitivo.
*   Quando o manual pedir para você baixar o stage3, aproveite para pegar o snapshot que ele pede mais pra frente, pois são downloads demorados. Você pode ir tomar um café ou ler outros posts nossos enquanto isso.
*   Se tiver um pouco de paciência e curiosidade, compile o kernel você mesmo ao invés de usar o genkernel. O **genkernel** usa o **coldplug**, que, até a útilma vez que vi, bloqueava a atualização do **udev**.
*   Quando fizer a instalação da rede você pode utilizar um software muito bom, o **ifplugd** (***emerge ifplugd***), para apenas tentar conectar se algum cabo estiver plugado na sua rede.
*   ***emerge links*** permite que você acesse a internet em modo texto, algo muito útil caso o seu sitema quebre.

Problemas:

*   **“C compiler cannot create executables” no *****emerge portage.*** Inicialmente achei que fosse um problema no gcc, mas mesmo com **emerge gcc** isso não adiantou. Na verdade o meu **/etc/make.conf** estava configurado para **pentium-4**(errado) e não **pentium4**(correto). Então se você tiver esse problema de uma olhada na sua **CFLAGS** para ter certeza que está tudo certo.

Se você optou pelo LiveCD, você tem agora uma instalação quase completamente funcional. Se você escolheu o minimal, deve ainda instalar o ambiente gráfico. Outros itens de hardware também devem ser instalados, como placa de som, placa wireless (possivelmente), etc. Algumas coisas também precisam ser configuradas. Na próxima parte do guia irei abordar esses assuntos. Uma coisa interessante agora seria usar o ***emerge –update world*** para atualizar o seu sistema (isso pode fazer seu sistema quebrar se você usou o LiveCD). 














 [1]: http://www.gentoo.org/ "Site Oficial do Gentoo"
 [2]: http://www.gentoo.org/main/en/where.xml "Imagens do Gentoo"
 [3]: http://www.gentoo.org/doc/pt_br/handbook/handbook-x86.xml?part=1&chap=2 "Diferenças entre as opções de Instalação"
 [4]: http://www.gentoo.org/doc/en/handbook/index.xml "Manual Minimal em Inglês"
 [5]: http://www.gentoo.org/doc/pt_br/handbook/ "Manual Minimal em Português"
 [6]: http://www.gentoo.org/doc/en/handbook/2006.1/handbook-x86.xml "Manual LiveCD em Inglês"





