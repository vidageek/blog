#! /bin/bash

function to_path {
    RETVAL=`echo $1 | tr '[A-Z]' '[a-z]' | sed -E "s#[^0-9abcdefghijklmnopqrstuvwxyz/\._]+#-#g" | sed -E "s/-$//"`;
}

function escreve_post {
    FILE=$1
    PALESTRANTE=$2
    TITULO=$3
    POST_PATH=$4
    CATEGORY=$5
    CODIGO=$6

    echo "Gerando arquivo $FILE"

    echo "---" > $FILE;
    echo "layout: post" >> $FILE;
    echo "title: Conversa Rápida - $PALESTRANTE - $TITULO" >> $FILE;
    echo "permalink: /conversa-rapida/$POST_PATH" >> $FILE;
    echo "category: $CATEGORY" >> $FILE;
    echo "author: Jonas Abreu" >> $FILE;
    echo "---" >> $FILE;
    echo "" >> $FILE;
    echo "<iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/$CODIGO\" frameborder=\"0\" allowfullscreen></iframe>" >> $FILE;

}

function escreve_index {
    FILE=index.html;
    CATEGORIAS=`echo $1 | sed "s/, $//"`;
    PALESTRANTES=`echo $2 | sed "s/, /#/g" | tr '#' '\n' | sort | uniq`
 
    echo "---" > $FILE;
    echo "layout: subsite" >> $FILE;
    echo "categories: [$CATEGORIAS]" >> $FILE;
    echo "subsite: conversa-rapida" >> $FILE;
    echo "---" >> $FILE;
    echo "" >> $FILE;
    echo "<h2>Palestrantes</h2>" >> $FILE;
    echo "<ul class=\"nav nav-pills categorias\">" >> $FILE;
    for PALESTRANTE in $PALESTRANTES; do
        to_path $PALESTRANTE
        URL_PALESTRANTE=$RETVAL
        echo "<li><a href=\"/conversa-rapida/$URL_PALESTRANTE.html\">$PALESTRANTE</a></li>" >> $FILE;
    done;
    echo "</ul>" >> $FILE;
    echo "" >> $FILE;
    echo "O Conversa Rápida é um evento com palestras curtas, dinâmicas para grupos e outras atividades propostas" >> $FILE;
    echo "pelos palestrantes. A motivação principal é introduzir novos assuntos, então todos só sabem quais serão" >> $FILE;
    echo "os temas das apresentações no momento delas." >> $FILE;
    echo "" >> $FILE;
}

function adiciona_palestra {
    PALESTRANTE=$1
    to_path $PALESTRANTE
    PALESTRANTE_PATH=$RETVAL
    FILE="palestrante-$RETVAL.markdown"
    TITULO=$2
    POST_PATH=$3
    
    if [ -e  "$FILE" ]; then
        echo "* [$TITULO](/conversa-rapida/$POST_PATH)" >> $FILE;
    else
        echo "Gerando arquivo $FILE"
        echo "---" > $FILE;
        echo "layout: palestrante" >> $FILE;
        echo "palestrante: $PALESTRANTE" >> $FILE;
        echo "permalink: /conversa-rapida/$PALESTRANTE_PATH.html" >> $FILE;
        echo "subsite: conversa-rapida" >> $FILE;
        echo "---" >> $FILE;
        echo "" >> $FILE;
        echo "* [$TITULO](/conversa-rapida/$POST_PATH)" >> $FILE;
    fi;
}

function escreve_categoria {
    CATEGORIA=$1
    FILE=$CATEGORIA.html

    echo "Gerando arquivo $FILE"

    echo "---" > $FILE;
    echo "layout: category" >> $FILE;
    echo "category: $CATEGORIA" >> $FILE;
    echo "permalink: /conversa-rapida/$CATEGORIA.html" >> $FILE;
    echo "subsite: conversa-rapida" >> $FILE;
    echo "---" >> $FILE;

}

METADATA=~/Dropbox/Documents/Eventos/ConversaRapida

IFS_BAK=$IFS
IFS="
"

echo "Apagando palestrantes"
rm -f palestrante*

CATEGORIAS=""
PALESTRANTES=""
for EDICAO in `find $METADATA -iname links-videos`; do
    ANO=`echo $EDICAO | cut -d "/" -f 8`
    MES=`echo $EDICAO | cut -d "/" -f 9 | cut -d "-" -f 1`
    DATA=`grep "^$ANO-$MES" edicoes | cut -d " " -f 2`
    MES_EXTENSO=`echo $EDICAO | cut -d "/" -f 8 | cut -d "-" -f 2`
    EMPRESA=`echo $EDICAO | cut -d "/" -f 8 | cut -d "-" -f 3`
    CATEGORIA="cr$ANO$MES"
    CATEGORIAS="$CATEGORIA, $CATEGORIAS"

    escreve_categoria $CATEGORIA

    N=0
    for VIDEO in `cat $EDICAO`; do
        let "N=$N + 1"
        TITULO=`echo $VIDEO | cut -d "#" -f 1`;
        PALESTRANTE=`echo $VIDEO | cut -d "#" -f 2`;
        PALESTRANTES="$PALESTRANTE, $PALESTRANTES"
        CODIGO_YOUTUBE=`echo $VIDEO | cut -d "#" -f 3 | sed -E "s/.*v=(.*)/\1/"`;
        to_path "$PALESTRANTE-$TITULO"
        POST_PATH=$RETVAL;
        TITULO_LIMPO=`echo $TITULO | sed "s/:/\&#58;/g"`
        FILE="../_posts/$DATA-$N-$POST_PATH.markdown"

        escreve_post $FILE $PALESTRANTE $TITULO_LIMPO $POST_PATH $CATEGORIA $CODIGO_YOUTUBE
        adiciona_palestra $PALESTRANTE $TITULO_LIMPO $POST_PATH
               
    done;
done;

escreve_index $CATEGORIAS $PALESTRANTES

IFS=$IFS_BAK
IFS_BAK=

