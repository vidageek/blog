---
author: Luiz
title: Meu Ubuntu fala!
layout: post

---
![Voz sintetizada][1]Tenho alguns amigos que possuem Mac Books e adoram brincar com o sintetizador de voz que vem com o Mac OS X. Eu também queria um sintetizador de voz para participar da brincadeira, mas meu notebook não é da Apple. Então procurei no meu Ubuntu algum sintetizador de voz para instalar. E qual não foi a minha surpresa quando descobri que o Ubuntu já vem com um instalado!



Primeiramente, tentei usar o mesmo comando que se usa no OS X: `say`. O Ubuntu mostrou que eu não tinha o pacote instalado (o impressionante é que tem um pacote com esse programa!). Instalei-o e testei, mas não funcionou. Já estava quase desistindo quando encontrei o que queria, buscando por pacotes no Synaptic: `espeak`.

O `espeak` tem suas vantagens e desvantagens comparado ao sintetizador de voz do Mac OS X. Ainda não aprendi a utilizá-lo direito mas, por exemplo, parece que não dá para fazer com que ele leia os itens da interface para você. Apenas entrada de texto é suportada. Outra “habilidade” do sintetizador do Mac que não existe nesse programa é a de cantar o texto passado (sim, o sintetizador de voz do Mac consegue cantar um texto, seguindo uma das melodias pré-definidas no sistema).

Por outro lado, o `espeak` suporta várias línguas, inclusive o português. Mesmo que o sotaque não seja dos melhores (parece um americano falando português, às vezes), quebra um galho legal.

Agora você já pode deixar seu Ubuntu mais simpático! Crie um script assim:  

	#!/bin/bash
	espeak -v brazil 'Olá!'

e coloque para executar no início da sessão =) 

 [1]: http://vidageek.net/wp-content/uploads/2008/08/sintvoz.jpg "Voz sintetizada"





