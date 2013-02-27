---
author: Jonas Abreu
title: Converter DBF para CSV
layout: post
---

Por alguma razão estranha, o governo disponibiliza os [dados do SUS][1] em arquivos [dbf][2] 
(dBase) e [dbc][3] (Visual Fox Pro). Um formato de fácil extração e aberto. Só que não é.

Como eu estou analisando os dados do SUS, precisava de alguma forma abrir esses dados em um linux. Depois de 
bastante sofrimento (e tentando usar o [dbf2mysql][4], que finge importar, mas não importa), encontrei um
[post que me mostrou como transformar em CSV][5].

Basta você usar o programa `dbf_dump`, que está no pacote [libdbd-xbase-perl][6].

Depois disso, foi só [importar o CSV no MySQL][7].

[1]: http://www2.datasus.gov.br/DATASUS/index.php
[2]: http://filext.com/file-extension/DBF
[3]: http://filext.com/file-extension/DBC
[4]: http://packages.ubuntu.com/quantal/dbf2mysql
[5]: https://vijaydev.wordpress.com/2011/03/21/converting-dbf-to-csv/
[6]: http://packages.ubuntu.com/quantal/libdbd-xbase-perl
[7]: /2013/02/27/importar-csv-mysql/
