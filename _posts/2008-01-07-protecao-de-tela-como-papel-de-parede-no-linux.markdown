---
author: convidados
title: Proteção de Tela como Papel de Parede no Linux
layout: post

---
Segue uma dica que achei na internet e é bem interessante. É possível colocar uma proteção de tela como papel de parede do Linux, por exemplo a animação do Matrix.  
![Proteção de Tela no Nautilus][1]Isso pode ser feito de maneira bem fácil, mas infelizmente não funciona com o Compiz Fusion.Inicialmente, configuramos o Nautilus para não mostrar o desktop tradicional:

	gconftool-2 --type bool --set /apps/nautilus/preferences/show_desktop false
	
E executamos a proteção de tela na tela *root*, que é o na verdade a tela do desktop.

	/usr/lib/xscreensaver/glmatrix -root
	
(Troque o caminho `/usr/lib/xscreensaver/glmatrix` pelo caminho do seu screensaver favorito)

Se você quiser, pode deixar a animação configurada para começar automaticamente. Para isto, basta criar o arquivo "~/.config/autostart/glmatrix.desktop" e colocar o seguinte:

	[Desktop Entry]
	Version=1.0
	Encoding=UTF-8
	Name=No name
	Name[en_IN]=Desktop matrix
	Exec=/usr/lib/xscreensaver/glmatrix -root
	X-GNOME-Autostart-enabled=true

Para desativar, basta configurar o Nautilus para mostrar o desktop e reinicia-lo.

	gconftool-2 --type bool --set /apps/nautilus/preferences/show_desktop true && nautilus &

Fonte: [Prashanth Ellina Blog – Matrix Desktop][2] 














 [1]: http://www.prashanthellina.com/images/matrix_desktop.gif
 [2]: http://blog.prashanthellina.com/2007/08/22/matrix-desktop/ "Matrix Desktop"





