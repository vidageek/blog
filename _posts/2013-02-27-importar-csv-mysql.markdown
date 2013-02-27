---
author: Jonas Abreu
title: Importar CSV no MySQL
layout: post
---

Dica rápida mas que me fez falta.

O [MySQL][1] possui um comando para [importar um arquivo CSV diretamente em uma tabela][2] (e parece ser bem rápido).

	LOAD DATA INFILE 'arquivo' INTO TABLE 'tabela'

No meu caso, eu rodei direto da shell com
	
	mysql -u root database -e "LOAD DATA INFILE 'arquivo' INTO TABLE 'tabela'"

[1]: https://www.mysql.com/
[2]: https://dev.mysql.com/doc/refman/5.1/en/load-data.html
