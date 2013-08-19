---
layout: post
title: MySQL com Pentaho
permalink: /pentaho/mysql-com-pentaho
category: banco-dados
author: Jonas Abreu
---

O banco relacional que mais usei com [Pentaho][1] é o [MySQL][2]. E por ser OpenSource, eu achava que ele viria 
configurado por padrão no [Kettle][3] e no [BI Server][4] e seria apenas usar.

Não. O Pentaho vem configurado para usar o MySQL, mas por alguma razão (provavelmente alguma restrição da licença), 
o driver JDBC não vem junto com as ferramentas.

No Kettle caso você tente usar sem acrescentar o driver, receberá uma mensagem como:

    org.pentaho.di.core.exception.KettleDatabaseException: 
    Error occured while trying to connect to the database

    Exception while loading class
    org.gjt.mm.mysql.Driver

Para resolver isso, primeiro [baixe o driver JDBC para MySQL][5], descompacte o `zip` ou `tar.gz`. Dentro dele 
você terá um arquivo como `mysql-connector-java-5.1.24.jar` (`5.1.24` é a versão do driver e talvez seja diferente
quando você baixar, mas provavelmente funcionará do mesmo jeito).

Copie para a pasta `libext/JDBC/` do Kettle (Também conhecido como Pentaho Data Integration - PDI). Com isso o Kettle 
passa a ser capaz de se comunicar com o MySQL (assim que você reiniciar ele).

Copie o mesmo arquivo para a pasta `biserver-ce/tomcat/lib` da sua instalação do BI Server e ele também estará pronto 
para usar o MySQL (depois de ser reiniciado).

[1]: http://www.pentaho.com/
[2]: http://mysql.com/
[3]: /pentaho/kettle.html
[4]: /pentaho/biserver.html
[5]: https://dev.mysql.com/downloads/connector/j/#downloads
