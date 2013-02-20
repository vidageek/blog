---
author: Jonas Abreu
title: Como montar um EBS no Ubuntu
layout: post
---

Uma coisa que tenho feito com frequência para processar grandes quantidades de dados (~50Gb) é criar um (ou mais) [EBS][1]s temporários.

Depois de criar um EBS novo e associar ele á máquina que precisa dele, ele ainda não está pronto para usar. Você precisa, antes de mais nada, formatar o EBS.

	sudo mkfs.ext4 /dev/xvdf 

Em versões de linux mais recentes, o primeiro EBS associado fica disponível em `/dev/xvdf` (antes era em `/dev/sdf`). O `mkfs.ext4` formata o device com [ext4][2] como sistema de arquivos. Vale lembrar que se o EBS já estiver formatado e com dados dentro, **TUDO** será apagado.

Feito isso, só falta montar o volume.

	mkdir pasta
	sudo mount /dev/xvdf pasta

Pronto. Agora é só usar o EBS.

[1]: https://aws.amazon.com/ebs/
[2]: https://en.wikipedia.org/wiki/Ext4
