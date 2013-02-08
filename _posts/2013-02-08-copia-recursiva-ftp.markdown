---
author: Jonas Abreu
title: Cópia recursiva de um ftp
layout: post
---

Acabei de precisar fazer cópia recursiva de um ftp do governo. Como vocês devem saber, ftp é 
um protocolo meio burro então ele não suporta isso.

Para resolver o problema, descobri umas funcionalidades que não conhecia do [wget][1].

O comando que usei foi o seguinte:

	wget --mirror --ftp-user=USERNAME --ftp-password=SENHA \
		--no-host-directories ftp://DOMINIO/CAMINHO/

O grande segredo é o `--mirror`, que entre outras coisas, habilita recursão infinita nos diretórios (além 
dele baixar apenas os arquivos modificados em uma próxima atualização).

Enfim, quase um [rsync][2] para ftp.

[1]: https://www.gnu.org/software/wget/
[2]: https://rsync.samba.org/
