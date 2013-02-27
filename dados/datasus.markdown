---
dados: DataSus
layout: dados
author: Jonas Abreu
stealth: true
---

* **14/01/2013** - Dados foram encontrados em ftp://msbbs.datasus.gov.br/ de uma forma não muito simples (Clécio?)

* **16/01/2013** - Vários testes de como extrair os dados usando os dados de Tocantins como base

* **???/01/2013** - O pdf [http://dtr2001.saude.gov.br/editora/produtos/livros/pdf/04_0203_M2.pdf][4] possui explicação do que significa alguns dos campos de algumas das tabelas.

* **???/01/2013** - Também encontramos um outro ftp público (referênciado atravéz de links para arquivos nas páginas do DataSus) ftp://ftp2.datasus.gov.br/ . Esse ftp possui vários dados interessantes (como em ftp://ftp2.datasus.gov.br/public/sistemas/AIH/RD1992/RD ) que não encontramos no ftp anterior, mas possui muitos arquivos não relacionados (aparentemente foram expostas diversas pastas do servidor, mas não pensando em abertura de dados) como distribuições de linux (conectiva, aparentemente), [VLC][1] em ftp://ftp2.datasus.gov.br/public/public/sistemas/dsweb e outros. ![VLC][2] ![Conectiva][3]

* **08/02/2013** - Cópia dos dados foi feita usando o comando `wget --mirror --ftp-user=anonymous --ftp-password=jonas@vidageek.net --no-host-directories ftp://msbbs.datasus.gov.br/Arquivos_Publicos` . A opção `--mirror` é muito importante, porque além da velocidade baixa de cópia (~100k/s) o ftp do governo simplesmente desconectou algumas vezes. A cópia total levou mais de 4 dias.

* **17/02/2013** - Também existe o ftp ftp://ftp.datasus.gov.br (descoberto porque o outro ftp é o ftp2), que possui muitos arquivos mas não parece ter nada de útil para o que queremos.

* **18/02/2013** - Como o ftp não parece suportar algum tipo de verificação de integridade dos arquivos, usei o tamanho para uma validação mínima de que o download foi feito corretamente. Para verificar o tamanho, aproveitei que o wget salvou arquivos (.listing) com o tamanho (em bytes) que o arquivo tem no ftp.
Foi usado o script 

		for X in `ls`; do cd $X; cat .listing | sed 's/[[:space:]]\+$/ /' | awk '{print $5, $9 }' > files.ftp; ls -l | awk '{print $5, $9}' > files.local; diff files.ftp files.local > files.diff; cd ..; done;

	para encontrar as diferenças e o script 

		find . -iname *.diff | xargs cat | grep -v index | grep -v files | cut -d " " -f 3 | grep "\." | xargs -I '{}' find . -iname '{}' | xargs rm

	para remover os arqivos que estavam diferentes. Foi usado o `wget` para baixar novamente os arquivos defeituosos. A operação foi repetida até nenhum arquivo apresentar defeitos.

	Depois de bastante análise, notei que alguns arquivos não estão acessíveis no ftp. São eles:

		cham0409.arj
		ipam0204.dbc
		peal0201.arj
		peal0202.arj
		sham0409.arj
		rdpa0707.dbc
		rdpa0708.dbc
		rdpa0707.dbc
		rdpa0708.dbc
		chdf0409.arj
		shdf0409.arj
		uamg0012.dbc
		uamg0012.dbc
		ipba0109.dbc
		ipba0109.dbc
		shba0409.arj
		srba0112.dbc
		rdrn1201.dbc
		rdrn1202.dbc
		rdrn1201.dbc
		rdrn1202.dbc
		shrn0203.arj
		shsp0602.arj
		rdrj1202.dbc
		rdrj1202.dbc
		rdrj1206.dbc
		rdrj1207.dbc
		rdrj1206.dbc
		rdrj1207.dbc
		rdrj1209.dbc
		rdrj1209.dbc
		chap0409.arj
		shap0409.arj
		cnal0111.dbc
		chce0409.arj
		ipce0111.dbc
		shce0409.arj
		atgo0110.dbc
		chgo0409.arj
		shgo0409.arj
		rdrs1209.dbc
		rdrs1209.dbc
		tars0209.dbf
		ches0409.arj
		shes0409.arj
		ippr0204.dbc
		ippr0204.dbc
		mnpr0204.dbc
		uapr0204.dbc
		spto0604.dbc
		spto0605.dbc
		spto0606.dbc
		spto0607.dbc
		spto0608.dbc
		spto0609.dbc
		spto0610.dbc
		spto0611.dbc
		spto0612.dbc
		spto0701.dbc
		spto0702.dbc
		spto0703.dbc
		spto0704.dbc
		spto0705.dbc
		spto0706.dbc
		spto0707.dbc
		spto0708.dbc
		spto0709.dbc
		spto0710.dbc
		spto0711.dbc
		spto0712.dbc
	
	Dos arquivos acessíveis, a contagem foi a seguinte:

		      1 7z
		      4 dts
		     28 htm
		     28 txt
		     38 dbf
		     39 zip
		     54 prn
		   2923 exe
		  12047 arj
		  26029 dbc

	Os arquivos que são de maior interesse (que são os dados do DataSus) são os com as extensões dbf (Foxpro), exe (arquivo zip com dbf dentro), arj (arquivo compactado com arj e com dbf dentro) e dbc (MS Visual Foxpro). Vale lembrar que dbf e dbc são formatos proprietários, o que dificulta muito a extração dos dados. 
	Para transformar todos os arquivos em dbf, foi usado [um script bash][5] com base em [arj][7], [unzip][8], [wine][9] e uma [ferramenta de extração de dbc fornecida pelo datasus][6] (mas que só funciona em windows).

* **19/02/2013** - Os arquivos são um pouco despadronizados. Alguns arj/exe possuem mais de um dbf. As vezes o nome externo não bate com o interno. Para evitar colisões e sobrescritas, o script foi modificado para acrescentar um namespace (nome do arquivo original) na pasta de destino.

* **23/02/2013** - Não foi possível extrair vários arquivos referentes ao Amapá. São eles:

	Estado_AP/acap0105.exe
	Estado_AP/acap0106.exe
	Estado_AP/acap0107.exe
	Estado_AP/acap0108.exe
	Estado_AP/acap0109.exe
	Estado_AP/acap0110.exe
	Estado_AP/acap0111.exe
	Estado_AP/acap0112.exe
	Estado_AP/acap0201.exe
	Estado_AP/acap0202.exe
	Estado_AP/acap0203.exe
	Estado_AP/acap0204.exe
	Estado_AP/acap0205.exe
	Estado_AP/acap0206.exe
	Estado_AP/acap0207.exe
	Estado_AP/acap0208.exe
	Estado_AP/acap0211.exe
	Estado_AP/acap0212.exe
	Estado_AP/acap0301.exe
	Estado_AP/acap0302.exe
	Estado_AP/acap0303.exe
	Estado_AP/acap0304.exe
	Estado_AP/acap0305.exe
	Estado_AP/acap0306.exe
	Estado_AP/acap0307.exe
	Estado_AP/acap0308.exe
	Estado_AP/acap0309.exe
	Estado_AP/acap0310.exe
	Estado_AP/acap0311.exe
	Estado_AP/acap0312.exe
	Estado_AP/acap0401.exe
	Estado_AP/acap0402.exe
	Estado_AP/acap0403.exe
	Estado_AP/acap0404.exe
	Estado_AP/acap0405.exe
	Estado_AP/acap0406.exe
	Estado_AP/acap9801.exe
	Estado_AP/acap9802.exe
	Estado_AP/acap9803.exe
	Estado_AP/acap9804.exe
	Estado_AP/acap9805.exe
	Estado_AP/acap9806.exe
	Estado_AP/acap9807.exe
	Estado_AP/acap9808.exe
	Estado_AP/acap9809.exe
	Estado_AP/acap9810.exe
	Estado_AP/acap9811.exe
	Estado_AP/acap9812.exe
	Estado_AP/acap9901.exe
	Estado_AP/acap9902.exe
	Estado_AP/acap9903.exe
	Estado_AP/acap9904.exe
	Estado_AP/acap9905.exe
	Estado_AP/acap9906.exe
	Estado_AP/acap9907.exe
	Estado_AP/acap9908.exe
	Estado_AP/acap9909.exe
	Estado_AP/acap9910.exe
	Estado_AP/acap9911.exe
	Estado_AP/acap9912.exe
	

* **25/02/2013** - Foi usado o seguinte [script para a geração das tabelas][10]. O script teve que ser modificado porque alguns arquivos já deram sinais de que não podem ser extraídos. Eles serão registrados no momento da extração.

* **26/02/2013** - Conseguimos extrair os dados dos arquivos referentes ao Amapá. Foi necessário o [WinRAR][11] em uma máquina Windows. O descompactador do MacOS X e o programa [unzip][8] não conseguiram.

[1]: http://www.videolan.org/vlc/index.html
[2]: /dados/datasus/vlc.png
[3]: /dados/datasus/conectiva.png
[4]: http://dtr2001.saude.gov.br/editora/produtos/livros/pdf/04_0203_M2.pdf
[5]: https://gist.github.com/jonasabreu/4982078
[6]: http://www2.datasus.gov.br/DATASUS/index.php?area=040805&item=6#dbf2dbc
[7]: http://packages.ubuntu.com/quantal/arj
[8]: http://packages.ubuntu.com/quantal/unzip
[9]: http://www.winehq.org/
[10]: https://gist.github.com/jonasabreu/5030203
[11]: http://www.rarlab.com/download.htm
