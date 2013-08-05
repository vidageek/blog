---
layout: post
title: GZip no BI Server
permalink: /pentaho/gzip-bi-server
category: biserver
author: Jonas Abreu
---

Uma das primeiras coisas que notei usando o [Pentaho BI Server][1], em especial com o [Saiku][2] é que abrir o filtro 
de uma das dimensões demorava cerca de 30 segundos. Achei isso muito estranho.

Olhando a dimensão no banco de dados, vi que ela tinha cerca de 5k elementos. Embora bastante para uma dimensão, o 
tempo para carregar a tela ainda estava muito alto.

Resolvi olhar a requisição que era feita, e vi que um json de 5Mb era devolvido. Olhando os headers vi que não estava 
compactado com GZip.

Coisa simples, mas que não vem habilitado por padrão. Para habilitar GZip, basta entrar na pasta `biserver-ce/tomcat/conf` 
(dentro da sua instalação do BI server), abrir o `server.xml` e trocar as linhas:

    <Connector URIEncoding="UTF-8" port="8080" protocol="HTTP/1.1" 
        connectionTimeout="20000" 
        redirectPort="8443" />

por

    <Connector URIEncoding="UTF-8" port="8080" protocol="HTTP/1.1" 
        compression="on" 
        compressionMinSize="2048" 
        compressableMimeType="text/html,text/xml,text/plain,application/json"
        connectionTimeout="20000" 
        redirectPort="8443" />

O mais legal é que isso habilita GZip em todo o BI Server, desde que o recurso devolvido seja de algum desses mime types.

A diferença de tempo de carga das páginas é sensível.
    

[1]: http://community.pentaho.com/projects/bi_platform/
[2]: /pentaho/saiku
