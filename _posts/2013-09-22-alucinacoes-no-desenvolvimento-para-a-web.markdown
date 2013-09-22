---
layout: post
author: Luiz
title: Alucinações no desenvolvimento para a web
---

No último final de semana, rolou o [FrontInSampa 2013](http://frontinsampa.com.br/), evento que reuniu alguns dos melhores desenvolvedores *front-end* do país, dentre eles o [Sérgio Lopes](http://sergiolopes.org), com o qual tenho o prazer de trabalhar.

O Sérgio deu uma palestra bastante instigante ([slides online](http://j.mp/160eINK)), na qual comentou sobre a nossa obrigação de fazer sites responsivos, considerando o modo como desenvolvíamos sites antigamente (pensando numa única resolução) uma grande alucinação coletiva. E, no final, ele lança: "qual é a nossa alucinação atual?".

Para tentar responder à essa pergunta, acredito que podemos parar para pensar: quais dispositivos novos com acesso à Internet estão aparecendo por aí? Quais suas limitações e inovações? Temos, por exemplo, o [Google Glass](http://www.google.com/glass/start/), em que a interação se dará por comandos de voz, ou o [Leap Motion](https://www.leapmotion.com/), que promete uma interação quase mágica com o dispositivo ao qual estiver conectado.

Antes de começar a pensar nesses dispositivos, precisamos parar e pensar um pouco: será que a Web vai estar presente neles? Talvez uma pergunta melhor seria: por que não estaria? Afinal, a Internet está presente em cada vez mais dispositivos... Espere, eu acabei de escrever Internet, mas a Internet pode estar presente sem o uso de **páginas** Web. Então vamos reformular: será que teremos acesso a páginas Web nesses novos dispositivos? Minha aposta é que sim.

As páginas da Web são escritas principalmente em HTML, CSS e JavaScript, ou em linguagens que geram essas três no final (como o [Markdown](http://daringfireball.net/projects/markdown/), que gera HTML e que estou usando para escrever esse post). E o fato é que, uma vez que você domina essas ferramentas, fica muito simples criar uma interface agradável, muito mais simples do que as soluções adotadas por bibliotecas de interfaces gráficas para aplicações desktop ou mobile atualmente.

Considerando, então, que precisaremos desenvolver sites para esses dispositivos que estão aparecendo agora, vamos pensar na pergunta do Sérgio: qual é a nossa alucinação atual? Talvez ainda esteja difícil de pensar numa resposta. Vamos pensar, então: como usaremos esses dispositivos? Será que vai ser fácil navegar pelo meu site com comandos de voz? Será que meu layout fica legal na telinha do Google Glass? Ou no meu [relógio com Android](http://www.sonymobile.com/br/products/accessories/smartwatch/)?

Acredito que, muitas vezes, estamos alucinando ao pensar uma usabilidade do tipo: é só meu usuário clicar nesse botão (que tem um ícone bonitinho) que o menu de navegação aparece. Mas seu usuário vai poder tocar na tela com o Google Glass? Como ele acessaria seu menu com um comando de voz? E com o Leap Motion? Será que não estamos alucinando de novo ao pensar que todo usuário vai poder interagir com nossa página simplesmente clicando/tocando nela? Ainda não tenho uma resposta definitiva para o problema, mas acredito que a solução envolverá a padronização de comandos e atalhos para a navegação numa página.

Outro caso: páginas com o efeito da moda, a paralaxe (cujo nome, na verdade, não tem muito a ver com o conceito original de paralaxe). Será que esse tipo de página será usável num dispositivo em que a rolagem não é um simples deslizar de dedo na tela ou no mouse?

Por enquanto, acredito que seguir boas práticas de acessibilidade, como as [recomendações de acessibilidade do W3C](http://www.ilearn.com.br/TR/WCAG20/), sejam uma boa tática para não cair nessas alucinações. Se seu site é usável para um usuário cego ou com deficiência motora, por exemplo, há grandes chances de ele também ser usável por comandos de voz ou com Leap Motion.
