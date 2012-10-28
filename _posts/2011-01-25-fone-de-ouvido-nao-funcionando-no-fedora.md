---
author: Luiz
title: >
  Fone de ouvido não funcionando no
  Fedora
excerpt:
layout: post
category:
  - Dicas
  - Linux
tags:
  - alsa
  - bug
  - fedora
  - intel hda
  - Linux
post_format: [ ]
---
No meu computador mais parrudo (que descrevi no [post anterior][1]), nunca conseguia usar fone de ouvido sem incomodar os outros à minha volta: se eu colocasse o plug até o fim, não saía som nenhum — nem no altofalante nem no fone. Se deixasse o plug do fone no meio do caminho, saía som tanto no fone quanto no altofalante do notebook.

Recentemente, resolvi correr atrás de uma solução para esse problema; e encontrei, mas não imediatamente, por isso resolvi postar a solução. Trata-se de um [bug][2] no ALSA, o módulo de som do kernel do Linux, com a placa de som Intel HDA (dê uma olhada no relato do bug para saber se se encaixa no seu caso). Aparentemente, o driver para essa placa tem comportamentos diferentes de acordo com o modelo do notebook, e ele precisa detectar o modelo para o som do fone de ouvido funcionar corretamente. Só que o ALSA não consegue detectar isso corretamente em muitos casos, daí a falta de som no fone.

Para corrigir esse problema, é necessário colocar uma regra para o carregamento do módulo que contém o driver da placa de som, dizendo qual o modelo do seu computador. Isso você faz colocando a seguinte linha

`<br />
options snd-hda-intel model=xxxxxx<br />
`

em um arquivo com a extensão .conf dentro do diretório /etc/modprobe.d (por exemplo, o arquivo /etc/modprobe.d/dist-alsa.conf). Substitua o xxxxxx por um dos modelos descritos [neste arquivo][3]. No meu caso, um Asus G51V, tive que colocar g71v como modelo. Talvez você tenha que colocar ainda mais um parâmetro nessa linha, deixando-a assim:

`<br />
options snd-hda-intel model=xxxxxx probe_mask=1<br />
`

Feito isso, você vai ter que recarregar o módulo do ALSA ou, o que é muito mais fácil na maioria dos casos, reiniciar o computador. E, por fim, depois que já tiver logado na sua conta, conectar o fone e entrar nas preferências de som para escolher os fones de ouvido como saída (em Sistema -> Preferências -> Som -> Saída). Funcionou? 
**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][5], por [Email][6] ou via [Twitter][7].**  
Veja como ter um desconto no [Dreamhost][8]: um excelente servidor web.

 [1]: http://vidageek.net/2011/01/08/meu-ambiente-de-desenvolvimento-em-7-itens-luiz/
 [2]: https://bugzilla.redhat.com/show_bug.cgi?id=603929
 [3]: http://www.kernel.org/doc/Documentation/sound/alsa/HD-Audio-Models.txt
 [4]: https://twitter.com/share
 [5]: http://feeds.feedburner.com/VidaGeek



