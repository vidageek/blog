---
layout: post
title: Ordenar pelo final da linha
author: Jonas Abreu
---

Acabei de precisar ordenar pelo fim da linha em um script bash que estava escrevendo. Por incrível que pareça, 
o sort não possui essa opção. Pra resolver isso, usei o `rev`, que simplesmente inverte as strings.

    cat arquivo | rev | sort | rev

Isso ordena as linhas do arquivo de acordo com o final dela e não o começo.
