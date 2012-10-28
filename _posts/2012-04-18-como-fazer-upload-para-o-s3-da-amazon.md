---
author: Jonas Abreu
title: Como fazer upload para o S3 da Amazon

layout: post
category:
  - Dicas
  - Programacao
tags: [ ]

---
Uma das coisas que precisei fazer para colocar o [Performance Java][1] foi aprender a fazer upload para o [S3][2].

Primeiro, baixei [este script muito bom][3] que cuida da parte chata do processo. É bem simples de configurar o acesso à sua conta do AWS.

Depois, como o S3 não suporta pastas, você precisa gerar a chave sendo o path completo até o arquivo que você vai subir.

Para isso fiz um pequeno script que está no [Github][4].

A parte desse script que faz efetivamente o deploy é a seguinte:

    
    for X in `find . -type f | sed -E "s/\.\///"`; do
    	echo "Deploying $X";
            typeFor $X
    	~/bin/aws/aws put "x-amz-acl: public-read" \
                         "Content-Type: $CONTENT_TYPE" \
                          www.javaperformance.com.br $X;
    done;
    

Explicando rapidamente:

`find . -type f` devolve todos os arquivos que estão abaixo do diretório atual no formato `./pasta/arquivo`

`sed -E "s/\.\///"` remove o `./` do começo do nome (senão os arquivos estariam acessiveis no path /./pasta/arquivo).

`aws put HEADERS NOME_DO_BUCKET NOME_DO_ARQUIVO` envia o arquivo para ser armazenado no seu bucket com o nome que você passou e o conteúdo do arquivo.

Duas coisas importantes são os headers especificados.

O primeiro é para deixar o arquivo acessível ao público. O segundo serve para especificar qual o Content-Type que o S3 colocará no header de resposta quando alguém pedir o arquivo. Isso é importante, porque o Content-Type padrão é o de arquivo binário e o browser não renderizará o seu arquivo.

Como eu não conheço nenhuma ferramenta que me dê o content-type de acordo com a extensão do arquivo, eu criei uma função (typeFor) que preenche na variável $CONTENT_TYPE o valor correto (ela está no [mesmo arquivo do Github][4]).















 [1]: http://www.javaperformance.com.br
 [2]: http://aws.amazon.com/s3/
 [3]: http://timkay.com/aws/
 [4]: https://github.com/jonasabreu/performance/blob/master/deploy.sh





