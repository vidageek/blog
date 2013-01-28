---
author: Jonas Abreu
title: 'JSF - Container'
layout: post

---
Em mais uma post da série que tem feito programadores Java perderem o sono, Java’s Signal of Failure (JSF).

Hoje o problema é bem leve, mas envolve um mal que persegue muitos programadores. Documentação.

A classe de hoje é java.awt.Container. Logo no início dela, existe a declaração de um atributo do tipo **int**. Aqui está o trecho de código:

    
    /**
     * The number of components in this container.
     * This value can be null.
     * @see #getComponent
     * @see #getComponents
     * @see #getComponentCount
     */
    int ncomponents;
    

Normal, não fosse um pequeno detalhe. “This value can be null”. Como assim? É um **int**. Obviamente não pode ser null. Tipos primitivos não aceitam null. O que deve ter acontecido é que ncomponents (nome bonito para uma variável, não?) deveria ser um java.lang.Integer, mas trocaram para int posteriormente. Pena que não viram o comentário perdido por ali.

Mais uma razão para valorizar a expressividade ao invéz dos comentários.




















