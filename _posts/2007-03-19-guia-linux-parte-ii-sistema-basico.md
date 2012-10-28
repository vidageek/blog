---
author: convidados
title: 'Guia Linux - Parte II: Sistema Básico'

layout: post
category:
  - Gentoo
  - Linux
  - OpenSource
  - Tutoriais
tags:
  - Gentoo
  - Linux
  - OpenSource
  - Tutoriais
post_format: [ ]
---
Continuando nosso Guia Linux, temos as instruções para você ter um sistema completamente funcional, não apenas terminais de texto como na parte anterior. Um detalhe útil que ficou faltando na parte anterior é o **pciutils**. Com **emerge pciutils** você recebe vários utilitários para analizar o seu hardware. O mais útil é o **lspci** que lista os dispositivos pci do seu micro ([veja o meu aqui][1]).

**Xorg  
**O Xorg (também conhecido com X ou X11) é o gerenciador de janelas do Linux. Ele funciona como uma camada para ambientes mais desenvolvidos como Gnome. Independente de você usar o Gnome, KDE, Blackbox ou qualquer outra coisa, você precisa do Xorg rodando em baixo desses pacotes. A instalação é muito simples, e, com um pouco de sorte, a configuração também (no princípio dos tempos isso era complicado).

**Wiki de instalação:** [http://www.gentoo-wiki.com/HOWTO_X.org][2]

**Problemas:**

*   **cairo needs X flag set**: esse problema ocorreu por causa da falta da flag X no USE dentro **/etc/make.conf**, após corrigido bastou dar **emerge cairo** para que o mesmo fosse recompilado e então **emerge xorg-x11** naturalmente.
*   ** Xorg is not able to detect your mouse:** Isso se deve ao fato de a localização do mouse no Gentoo ser um pouco fora do padrão. No meu caso bastou abrir o arquivo e colocar em **Section “InputDevice”, em Option “Device” o valor “/dev/input/mice”.**

**Dicas:**

*   Para descobrir qual o seu mouse bastar usar **cat [mouse] **trocando [mouse] pelo endereço do seu mouse no /dev/. Por exemplo: **cat /dev/input/mice**. Se quando você mexer o mouse aparecerem caracteres estranhos no terminal, então você encontrou o seu mouse. Basta apertar **ctrl+c** para fechar o programa.
*   Você possivelmente precisará do driver da sua placa de video. Você pode descobrir qual a sua placa com o **lspci**, e então procurar na net para descobrir o drive. Você provavelmente fara algo do tipo **emerge xf86-video-i810**, trocando i810 pelo nome do driver e deverá definir o **VIDEO_CARDS** dentro do **/etc/make.conf**.

**Gnome  
**Existem vários gerenciadores de janela para Linux, para citar outros temos o KDE, Blackbox, Windowmaker e muitos outros. Eu particularmente uso o Gnome por uma questão de gosto pessoal. Ele é bonito e amigável, mas em maquinas mais antigas ele pode ser muito pesado. A instalação, apesar de demorada, é muito simples.  
**  
Instalando:** [http://gentoo-wiki.com/HOWTO\_Gnome\_Desktop\_for\_the_End-User][3]  
**Melhorando a aparência:** [http://gentoo-wiki.com/HOWTO\_Beautify\_GNOME][4]

**Problemas: **

*   **poppler-bindings needs gtk flag set**: este é o mesmo problema que na sessão Xorg, eu esqueci de colocar no USE a flag gtk necessária para o gnome.

**Dicas:**

*   **emerge gnome-themes-extras** dá alguns temas a mais para você mudar a aparência do Gnome. Outros temas interessantes podem ser encontrados em [http://www.gnome-look.org/][5]

**GDM  
**O GDM é um gerenciador de login, permitindo que uma pessoa entre no sistema diretamente pelo X, não sendo preciso entrar em um terminal e usar startx. Isso é bem interessante para redes com vários usuários que não necessariamente sabem usar o terminal. Como na pratica, muito do que fazemos é direto no ambiente gráfico isso se torna muito útil.

**Instalação:** [http://gentoo-wiki.com/HOWTO\_GDM\_setup][6]

**Teclado**  
Nesse ponto tudo está funcionando bem, exceto possivelment o teclado. Caso você tenha um ABNT ou um ABNT-2 você deve ter ele configurado corretamente. Mas se você estiver com um teclado internacional, como o deu um notebook por exemplo (meu caso) seus acentos podem não estar funcionando. Com uma pesquisa simples você descobre que deve usar o teclado us-acentos ou us-intl. Mas um problema surge nesse caso. Quando você pressiona “‘c” você não obtém o “ç” e sim um “c com acento agudo”. Isso se deve ao fato de sua váriavel LANG não estar definida como “pt-BR”.

**Algumas Dicas: **[http://gentoo-wiki.com/TIP\_Speak\_Your_Language#Profiles][7]

**Resolvendo:**

1.  **Configurando o Terminal:** em **/etc/conf.d/keymaps** use **KEYMAP=”br-latin1-us”**, reinicie ou então execute **/etc/init.d/keymaps restart** (tenha certeza que a configuração está correta, pois se não seu teclado vai para o espaço).
2.  **Configurando o Xorg:** Mesmo que você configure corretamente o** /etc/X11/xorg.conf** ([pegue o meu aqui][8]), você possivelmente irá acentuar o c ao invés de escrever o ç. Para isso você precisa definir o **LANG** como **pt-BR**. Para isso você deve criar/editar o arquivo **/etc/env.d/02locale** ([aqui][9]) e adicionar/alterar **LANG = “pt-BR”**.
3.  **Outros:** Você pode dizer ao portage quais línguas você usa normalmente para que, ao baixar e compilar os programas, ele leve isso em consideração. Adicione **LINGUAS=”pt_BR en”** ao **/etc/make.conf** para que isso ocorra ([pegue o meu make.conf aqui][10]).

**ALSA**  
A **ALSA** (**A**dvanced **L**inux **S**ound **A**rchitecture) é a biblioteca mais usada atualmente para lidar com sons no Linux. Antigamente se usava o **OSS** (**O**pen **S**ound **S**ystem). Hoje muito da ALSA já faz parte do kernel do Linux, assim como o OSS. A instalação e a configuração são muito simples e estão bem explicadas no link abaixo.

**Instalação: **[http://gentoo-wiki.com/HOWTO\_ALSA\_Complete\_%28includes\_dmix%29][11]

** Problemas:**

*   **“No volume control GStreamer plugins and/or devices found”: **Isso se deve ao fato de instalar o **gnome** sem ter instalado a **ALSA** antes. Primeiramente tentei **emerge gstreamer**, mas não adiantou. Usei um **emerge -D gnome** e conseguir que funcionasse. Aproveitei para fazer um **emerge -uND world** por causa das mudanças no **USE**.

**Dicas:**

*   Usando **alsaconf** você pula a parte complicada de configurar sua placa de som alterando os arquivos de configuração.
*   **Testando o Alsa:** Vá com o **Firefox** em [www.pandora.com][12], instale o Flash Player se ele pedir e escute um dos melhores sites de rádio online no seu Linux. Minha rádio de MPB pode ser escutada [aqui][13].

**Wireless com MadWifi  
**Wireless no Linux pode ser uma coisa complicada e chata. Em seu [podcast][14], [no episódio sobre Wireless][15], Chess Griffin explica como essas dificuldades surgem graças aos fabricantes das placas que não apoiam o Linux e não lançam as especificações para que a comunidade possa desenvolver os drivers. Ele explica também como instalar várias placas diferentes. Eu vou me ater aqui ao meu Hardware, no caso uma placa Atheros Communications, Inc. AR5212 802.11abg NIC (rev 01).

**Guias:**

1.  [http://www.linux-on-laptops.com/hosted/tsa65.html][16]
2.  [http://gentoo-wiki.com/HOWTO\_MadWifi\_Install][17]

***problemas:***

*   No primeiro link existe duas informações erradas: Agora o **MadWifi** faz parte oficialmente do portage, então ao invés de **ACCEPT_KEYWORDS=”~x86″ emerge madwifi-driver **basta usar **emerge madwifi-ng**. A segunda informação errada é que você deve usar **modprobe wlan\_scan\_sta **para encontrar **Access Points**.
*   O segundo link também não está atualizado para o fato que o madwifi está no portage.
*   **Cuidado:** Pode ser necessário recompilar os drivers do madwifi quando se recompila o kernel.
*   Um problema quase geral de placas wifi é que normalmente existe um pedaço de código proprietário em suas bibliotecas. Isso significa que você ainda tem um sistema 100% grátis, mas **não 100% open source**.
*   **EDITADO: **Na primeira instalação do meu sistema tudo ocorreu como dito anteriormente, mas numa instalação mais recente tive problemas com o **udev** que carregava automáticamente o **ath_pci** e dessa forma o **ath0 não era criado automáticamente**. Na verdade era necessário descarregar o módulo e recarrega-lo para que funcionasse. Isso foi corrigido inicialmente alterando o **/etc/conf.d/rc** setando **RC_COLDPLUG=”no”**. Mas essa solução não é muito boa, na verdade, aós alguma pesquisa, descobri que a origem do problema era a falta da opção **Automatic kernel module loading** em **Loadable module support**, nas configurações do kernel.















 [1]: http://vidageek.net/public/guialinux/lspci.out "Meu lspci"
 [2]: http://www.gentoo-wiki.com/HOWTO_X.org "Gentoo Wiki: HowTo X"
 [3]: http://http://gentoo-wiki.com/HOWTO_Gnome_Desktop_for_the_End-User "Gentoo Wiki: HowTo Gnome Desktop for the End-User"
 [4]: http://gentoo-wiki.com/HOWTO_Beautify_GNOME "Gentoo Wiki: HowTo Beautify Gnome"
 [5]: http://www.gnome-look.org/ "Gnome Look"
 [6]: http://gentoo-wiki.com/HOWTO_GDM_setup "Gentoo Wiki: HowTo GDM Setup"
 [7]: http://gentoo-wiki.com/TIP_Speak_Your_Language#Profiles "Gentoo Wiki: Tip Speak Your Language - Profiles"
 [8]: http://vidageek.net/public/guialinux/xorg.conf "xorg.conf"
 [9]: http://vidageek.net/public/guialinux/02locale "/etc/env.d/02locale"
 [10]: http://vidageek.net/public/guialinux/make.conf "/etc/make.conf"
 [11]: http://gentoo-wiki.com/HOWTO_ALSA_Complete_%28includes_dmix%29 "Gentoo Wiki: HowTo ALSA Complete - includes dmix"
 [12]: http://www.pandora.com "Pandora: Radio Online"
 [13]: http://www.pandora.com/stations/77a3584bde7d2ee6c5e9505aa1db09a41512e210ad112f14 "Minha Rádio de MPB no pandora"
 [14]: http://www.linuxreality.com/ "Podcast: LinuxReality"
 [15]: http://www.linuxreality.com/podcast/episode-52-wireless-networking-basics/ "Wireless Networking Basics"
 [16]: http://http://www.linux-on-laptops.com/hosted/tsa65.html "Gentoo Linux on a Toshiba Sattelite A65"
 [17]: http://gentoo-wiki.com/HOWTO_MadWifi_Install "Gentoo Wiki: HowTo MadWifi Install"





