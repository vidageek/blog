---
author: fabs
title: Wikipedia na linha de comando

layout: post
category:
  - Diversão
tags:
  - bash
  - dig
  - wikipedia
post_format: [ ]
---
São muitas as vezes que tenho que recorrer ao navegador pra procurar no google a definição de alguma palavra, conceito, serviço ou “whatever” na wikipedia. Outro dia me deparei com o seguinte script, que chamei define:

#!/usr/bin/env bash

dig +short txt $@.wp.dg.cx

Por exemplo, executando:

fabs@mac > define ospf

vejo:

“Open Shortest Path First (OSPF) is a dynamic routing protocol for use in Internet Protocol (IP) networks. Specifically, it is a link-state routing protocol and falls into the group of interior gateway protocols, operating within an autonomous system (AS).” ” It is defined as OSPF Version 2 in RFC 2328 (1998) for IPv4. The updates for IPv6 are specified as OSPF Version 3 in RFC… **http://a.vu/w:Open\_Shortest\_Path_First**”

Note que no final ainda há um link para o artigo inteiro na wikipedia.

Uma mão na roda :-). [Para quem quer a fonte de onde encontrei isso, aqui vai.][1] 

*   No related posts












 [1]: http://lifehacker.com/5329014/search-wikipedia-from-the-command-line





