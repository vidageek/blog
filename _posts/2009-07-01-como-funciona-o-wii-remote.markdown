---
author: Luiz
title: Como funciona o Wii Remote
layout: post

---
![Wii Remote e Nunchuk][1]  
Esse post eu devo ao Marcos Bonci Cavalca, aluno de iniciação científica orientado pelo mesmo orientador que eu ([prof. Marcel Jackowski][2]). O Marcos está pesquisando interfaces para programas de imagens médicas e pretende usar o Wii Remote na interface que está desenvolvendo. Com as reuniões periódicas do grupo de pesquisa, eu acabei aprendendo um pouco também e resolvi contar aqui.

O Wii Remote tem dois sensores: uma câmera, que captura a luz infravermelha emitida por dois pontos na sensor bar, e acelerômetros, que permite obter a aceleração do controle nos três eixos (vertical, lateral e profundidade). A câmera encontra as fontes de infravermelho (lembrando: o Sol é uma, então jogar Wii a céu aberto num dia ensolarado não é uma boa) e emite as coordenadas dos pontos para o console. Com isso, dá para calcular a orientação do controle com relação ao chão e a direção para a qual você está apontando na tela. Já o Nunchuk, se não me engano, tem um acelerômetro só. Todos os dados são enviados via bluetooth para o Wii.

**Uma curiosidade**: Não sei se todo mundo sabe mas eu, pelo menos, descobri há pouco tempo. Vale não só para a sensor bar do Wii Remote, como para a maioria dos emissores de infravermelho usados em controles remotos. As webcams e (não testado) câmeras mais baratas e simples capturam infravermelho. Assim, você pode testar se seu controle remoto está funcionando apontando-o na direção de uma webcam ligada. A fonte de luz infravermelha vai aparecer branca na imagem. 














 [1]: http://vidageek.net/wp-content/uploads/2009/06/nunchuk.jpg "Wii Remote e Nunchuk"
 [2]: http://www.ime.usp.br/~mjack





