---
author: Jonas Abreu
title: Como descobrir o real encoding de um arquivo em java
layout: post

---
Um dos grandes problemas que enfrentamos no meu atual projeto na [AdaptWorks][1] foi descobrir qual o real encoding de páginas html arbitrárias.

Existem diversas causas para esse problema:

1.  Muitas pessoas não fazem idéia de como trabalhar com encodings de arquivos
2.  Nem sempre o encoding na resposta do servidor é o encoding do arquivo
3.  A tag meta com o charset também pode não bater com o encoding do arquivo
4.  Não existe uma forma simples de detectar qual o encoding do arquivo

Depois de muito procurar, encontramos um projeto que usa diversas heurísticas para detectar o encoding correto do arquivo. 

O [ICU (International Components for Unicode)][2] faz todo o trabalho pesado para a detecção do encoding, com mais confiabilidade do que os dados enviados pelo servidor ou especificados pelo criador da página.

Entre os vários usuários do ICU, estão Google, IBM e Apple.

Ele é meio chato de usar, mas vale a pena. 














 [1]: http://www.adaptworks.com.br
 [2]: http://site.icu-project.org/#TOC-Why-ICU4J-





