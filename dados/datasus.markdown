---
title: Extração de dados do DataSus
layout: dados
autor: Jonas Abreu
stealth: true
---

* **14/01/2013** - Dados foram encontrados em ftp://msbbs.datasus.gov.br/Arquivos\_Publicos de uma forma não muito simples (Clécio?)

* **16/01/2013** - Vários testes de como extrair os dados usando os dados de Tocantins como base

* **08/02/2013** - Cópia dos dados foi feita usando o comando `wget --mirror --ftp-user=anonymous --ftp-password=jonas@vidageek.net --no-host-directories ftp://msbbs.datasus.gov.br/Arquivos_Publicos &> out2 &` . A opção `--mirror` é muito importante, porque além da velocidade baixa de cópia (~100k/s) o ftp do governo simplesmente desconectou algumas vezes. A cópia total levou mais de 4 dias.



