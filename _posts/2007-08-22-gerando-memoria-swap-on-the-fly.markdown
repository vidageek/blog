---
author: convidados
title: Gerando memória swap on-the-fly
layout: post

---
No Linux (qualquer distribuição) é possível aumentar a sua memória** swap** (responsável por armazenar partes da sua RAM no disco) com uma pequena série, bem simples, de comandos. Isso é útil para não precisar reparticionar seu disco por falta de swap.

Primeiro criamos um arquivo (aqui chamado de container) com count blocos de tamanho bs (no caso, 64 blocos de 1024k, ou seja, 64M):  
`<br />
dd if=/dev/zero of=container bs=1024k count=64<br />
`

Posteriormente, criamos a estrutura de swap no arquivo:  
`<br />
mkswap container<br />
`

E finalmente, adicionamos mais swap:  
`<br />
swapon container<br />
`

**Atenção:** Isso não faz com que essa memória de swap esteja disponível após um reboot. Para isso você deve adicionar o swapon container nos scripts de inicialização do seu sistema. 



















