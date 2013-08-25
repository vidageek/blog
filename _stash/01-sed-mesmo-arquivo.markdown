---
layout: post
title: Sed no mesmo arquivo
author: Jonas Abreu
---

Eu sempre esqueço qual parâmetro devo passar pro `sed` pra conseguir trocar strings dentro do mesmo arquivo de origem.

    sed -i "" "s/String Original/String Nova/" arquivo

Pronto. Agora nem eu e nem vocês esqueceremos do `-i ""`. É só tomar cuidado porque se a substituição estiver errada, 
você estraga o arquivo original.
