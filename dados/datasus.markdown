---
dados: DataSus
layout: dados
author: Jonas Abreu
stealth: true
---

* **14/01/2013** - Dados foram encontrados em ftp://msbbs.datasus.gov.br/ de uma forma não muito simples (Clécio?)

* **16/01/2013** - Vários testes de como extrair os dados usando os dados de Tocantins como base

* **???** - Também encontramos um outro ftp público (referênciado atravéz de links para arquivos nas páginas do DataSus) ftp://ftp2.datasus.gov.br/ . Esse ftp possui vários dados interessantes (como em ftp://ftp2.datasus.gov.br/public/sistemas/AIH/RD1992/RD ) que não encontramos no ftp anterior, mas possui muitos arquivos não relacionados (aparentemente foram expostas diversas pastas do servidor, mas não pensando em abertura de dados) como distribuições de linux (conectiva, aparentemente), [VLC][1] em ftp://ftp2.datasus.gov.br/public/public/sistemas/dsweb e outros. ![VLC][2] ![Conectiva][3]

* **08/02/2013** - Cópia dos dados foi feita usando o comando `wget --mirror --ftp-user=anonymous --ftp-password=jonas@vidageek.net --no-host-directories ftp://msbbs.datasus.gov.br/Arquivos_Publicos &> out2 &` . A opção `--mirror` é muito importante, porque além da velocidade baixa de cópia (~100k/s) o ftp do governo simplesmente desconectou algumas vezes. A cópia total levou mais de 4 dias.

* **17/02/2013** - Também existe o ftp ftp://ftp.datasus.gov.br , que possui muitos arquivos mas não parece ter nada de útil para o que queremos.

[1]: http://www.videolan.org/vlc/index.html
[2]: /dados/datasus/vlc.png
[3]: /dados/datasus/conectiva.png
