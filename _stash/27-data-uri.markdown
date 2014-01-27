---
layout: post
title: Data URIs
author: Jonas Abreu
---

Eu conheço [Data URIs][1] faz algum tempo e cheguei a usar para inline de pequenas imagens,
mas eu ainda não tinha me tocado de quão flexível elas são.

Eu tinha o seguinte problema para resolver.

Na minha página eu tinha um pdf (encodado em base64) dentro de uma variável `pdf` e queria
disponibilizar isso para o usuário (fazer um download ou algo assim). 

Depois de bater a cabeça um pouco e não conseguir, perguntei ao [Victor Cavalcante][2] se
ele sabia como fazer isso. A resposta, como vocês já devem saber, foi Data URIs.

No meu caso, a data uri ficou assim:

    var uri = "data:application/pdf;base64, " + pdf;

Com isso, você pode colocar como o `href` de um link ou dar um `window.open` na uri. Mas o 
mais legal é que isso funciona para **quaquer** media type! Isso significa que você pode
gerar qualquer coisa em javascript e disponibilizar para o usuário.

[1]: https://developer.mozilla.org/en/docs/data_URIs
[2]: http://www.lambda3.com.br/
