---
author: Jonas Abreu
title: 'Open Source Week - Mirror'
layout: post

---
Para finalizar os lançamentos de projetos essa semana, a versão 1.6 do [Mirror][1] finalmente foi lançada.

Essa versão trás muitas pequenas melhorias para o dia a dia (como refletir um getter/setter) e algumas novas features que fizeram falta nos últimos tempos. As quatro principais são:

*   Mirror List: As listas devolvidas pelo mirror agora são um pouco mais inteligentes. Você pode filtrar os dados devolvidos de forma simples (lembra listas funcionais, mas não tão bonito)
*   Instanciar sem chamar construtor: Usando o [Objenesis][2] é possível instanciar objetos java ignorando o construtor. Não é uma feature para ser usada por todos os lados, mas pode salvar seu dia se bem aplicada.
*   Proxys: O Juliano Alves mandou um patch para a criação de proxys bem a tempo para o lançamento. Agora você pode criar proxys e lidar com eles de uma forma mais simples.
*   Sun 1.5/1.6 Reflection Provider: Reflection é lento? Nem tanto. Nós já aceleramos bastante reflection com alguns truques bobos (como chamar setAccessible(true), para ignorar algumas checagens de segurança). Esse Reflection Provider é um passo além. Usando classes internas da JVM da Sun, nós conseguimos ganhos consideráveis (em torno de 25% mais rápido). Isso é (e provavelmente continuara a ser) experimental.

[Lista completa de mudanças][3].   
[Página Oficial][4]. 














 [1]: http://projetos.vidageek.net/mirror-pt
 [2]: http://code.google.com/p/objenesis/
 [3]: http://projetos.vidageek.net/mirror/project/release-notes/
 [4]: http://projetos.vidageek.net/mirror/





