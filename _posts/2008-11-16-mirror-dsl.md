---
author: Jonas Abreu
title: Mirror DSL
excerpt:
layout: post
category:
  - Java
  - OpenSource
  - Programacao
  - Software
tags:
  - dsl
  - Java
  - Languages
  - mirror
  - Programming
  - reflection
post_format: [ ]
---
Alguns devem ter notado que faz alguns meses que não escrevo para o VG com frequencia. Um dos motivos disso foi este projeto.

O Mirror é uma DSL simples construida em cima da [Java][1] Reflection [API][2] pra facilitar um pouco a utilizacao dela.

A idéia é remover tudo aquilo que deixa o código praticamente incompreensível. Quem já brincou um pouco com reflection em Java sabe que você precisa suar bastante pra entender o código.

Com Mirror, seu código passa disso:

    
    Field toSet = null;
    for (Field f : target.getClass().getDeclaredFields()) {
        if (f.getName().equals("field")) {
            toSet = f;
        }
    }
    if (toSet != null && ((toSet.getModifiers() & Modifier.STATIC) == 0)
            && ((toSet.getModifiers() & Modifier.FINAL) == 0)) {
        toSet.setAccessible(true);
        toSet.set(target, value);
    }
    

Para isso:

    
    Mirror.on(target).set().field(fieldName).withValue(value);
    

Não sei quanto a vocês, mas eu prefiro a segunda forma ;)

[Site oficial do projeto][3]

Todo feedback é bem vindo!

[![Reblog this post [with Zemanta]][5]][5]

**Posts Relacionados:** 
*   No related posts









**Acompanhe-nos por [ RSS][6], por [Email][7] ou via [Twitter][8].**  
Veja como ter um desconto no [Dreamhost][9]: um excelente servidor web.

 [1]: http://en.wikipedia.org/wiki/Java_%28programming_language%29 "Java (programming language)"
 [2]: http://en.wikipedia.org/wiki/Application_programming_interface "Application programming interface"
 [3]: http://projetos.vidageek.net/mirror/
 []: http://reblog.zemanta.com/zemified/50d3c366-3064-49ca-b9fb-8f796e76b7e1/ "Zemified by Zemanta"





