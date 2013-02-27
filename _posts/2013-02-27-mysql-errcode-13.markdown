---
author: Jonas Abreu
title: MySQL Errcode 13
layout: post
---

Quando eu tentei [importar um CSV para uma tabela do MySQL][1] pela primeira vez, recebi um erro estranho. Dava **File not Found (Errcode 13)** mesmo o arquivo existindo.

Depois de procurar um pouco, descobri que esse erro é referente à permissões de leitura de arquivo. As permissões estavam corretas e o erro continuava.

Depois de mais um tempo gasto, [descobri que o Ubuntu agora usa um gerenciador de permissões diferente][3], que se chama [Apparmor][2]. Esse Apparmor permite que a aplicação acesse apenas os arquivos que estão declarados no perfil da aplicação.

No meu caso, como queria que o MySQL pudesse ler um arquivo, adicionei a seguinte linha no arquivo `/etc/apparmor.d/usr.sbin.mysqld`:

	/path/para/o/arquivo r,

Depois, reiniciei o Apparmor

	/etc/init.d/apparmor restart

E simplesmente passou a funcionar.

[1]: /2013/02/27/importar-csv-mysql/
[2]: https://en.wikipedia.org/wiki/AppArmor
[3]: http://ubuntuforums.org/showthread.php?t=822084
