---
author: Jonas Abreu
title: Rodar o MySQL em outra pasta
layout: post
---

No Ubuntu, por padrão o MySQL armazena os dados em `/var/lib/mysql`. Isso em geral não é um problema, mas como eu precisava de 20x mais hd do que minha máquina tinha, eu precisei fazer ele armazenar em outro lugar.

E é meio complicado fazer isso sem gambiarra. Gastei um dia tentando fazer direito e resolvi apelar para a [gambiarra que vi em um fórum][1].

Basicamente você move a `/var/lib/mysql` para onde você quer e coloca um link simbólico apontando para ela no lugar.

	/etc/init.d/mysql stop
	mv /var/lib/mysql pasta_nova
	ln -s pasta_nova /var/lib/mysql

Apenas isso ainda não vai funcionar. Precisa autorizar o [acesso à pasta no Apparmor][2].

E por fim, subir o mysql novamente

	/etc/init.d/mysql start

Esse tipo de coisa me faz ter muita saudade do [Sqlite][3].


[1]: http://article.my-addr.com/?show=linux_ubuntu_change_datadir-move_mysql_database_to_other_path
[2]: /2013/02/27/mysql-errcode-13/
[3]: https://www.sqlite.org/
