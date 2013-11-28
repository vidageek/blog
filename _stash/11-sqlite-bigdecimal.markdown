---
layout: post
title: Sqlite com BigDecimal
author: Jonas Abreu
---

Gosto muito de usar o [sqlite][1] porque ele é bem simples e resolve o problema (nada de 
instalar servidores, configurar usuários, etc).

Mas tive um pequeno problema com ele hoje. Quando tentei inserir um `java.math.BigDecimal`
nele, recebi a seguinte `exception`:

            not implemented by SQLite JDBC driver

    Caused by:

        java.sql.SQLException: not implemented by SQLite JDBC driver
	        at org.sqlite.Unused.unused(Unused.java:29)
	        at org.sqlite.Unused.setBigDecimal(Unused.java:58)

Operação boba como essa não implementada? Pois é. O problema é que eu estava usando uma versão
antiga do driver do sqlite para java (3.7.2). Subindo para a [versão mais recente do driver 
(3.7.15-M1)][2], o problema desaparece.

[1]: https://www.sqlite.org/
[2]: https://bitbucket.org/xerial/sqlite-jdbc/downloads
