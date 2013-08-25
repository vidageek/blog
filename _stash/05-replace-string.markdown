---
layout: post
title: Kettle Replace in String
author: Jonas Abreu
category: kettle
permalink: /pentaho/replace-in-string.html
game: regex
---

Outro component bem simples do pentaho. Ele serve para que você troque valores de campos `string` da stream
por outros valores.

Uma coisa muito útil é que é possível usar [expressões regulares][3] para trocar apenas um pedaço da string.

### Principais Parâmetros

* **In stream field:** Campo da stream que você quer mudar o valor
* **Out stream field:** Novo campo que conterá o resultado. Não pode ser o mesmo que **In stream field**. Se for, o 
kettle vai acrescentar `_1` no nome do campo.
* **use RegEx:** Habilita o uso de expressões regulares
* **Search:** A String que você quer buscar. Se **use RegEx** estiver habilitado (`Y`), é onde você coloca a RegEx.
* **Replace with:** Pelo que será trocado a string de **search**. Se **use RegEx** estiver habilitado, você pode usar [back references][1] para referenciar os [grupos de captura][2].

[1]: http://games.vidageek.net/reference/regex#match.back
[2]: http://games.vidageek.net/reference/regex#match.capture
[3]: http://games.vidageek.net/reference/regex
