#! /bin/bash

METADATA=/Users/setf/Documents/Eventos/ConversaRapida

IFS_BAK=$IFS
IFS="
"

for EDICAO in `find $METADATA -iname links-videos`; do
    ANO=`echo $EDICAO | cut -d "/" -f 7`
    MES=`echo $EDICAO | cut -d "/" -f 8 | cut -d "-" -f 1`
    DATA=`grep "$ANO-$MES" edicoes`
    MES_EXTENSO=`echo $EDICAO | cut -d "/" -f 8 | cut -d "-" -f 2`
    EMPRESA=`echo $EDICAO | cut -d "/" -f 8 | cut -d "-" -f 3`
    
    N=0
    for VIDEO in `cat $EDICAO`; do
        let "N=$N + 1"
        TITULO=`echo $VIDEO | cut -d "#" -f 1`;
        PALESTRANTE=`echo $VIDEO | cut -d "#" -f 2`;
        CODIGO_YOUTUBE=`echo $VIDEO | cut -d "#" -f 3 | sed -E "s/.*v=(.*)/\1/"`;
        POST_PATH=`echo $PALESTRANTE-$TITULO | tr '[A-Z]' '[a-z]' | sed -E "s#[^0-9a-z/\._]+#-#g" | sed -E "s/-$//"`;
        
        TITULO_LIMPO=`echo $TITULO | sed "s/:/&#58;/g"`

        FILE=`echo $DATA-$N-$POST_PATH.markdown`
        
        echo "Gerando arquivo $FILE"

        echo "---" > $FILE;
        echo "layout: post" >> $FILE;
        echo "title: Conversa Rápida - $PALESTRANTE - $TITULO_LIMPO" >> $FILE;
        echo "permalink: /conversa-rapida/$POST_PATH" >> $FILE;
        echo "category: cr$ANO$MES" >> $FILE;
        echo "author: Jonas Abreu" >> $FILE;
        echo "---" >> $FILE;
        echo "" >> $FILE;
        echo "<iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/$CODIGO_YOUTUBE\" frameborder=\"0\" allowfullscreen></iframe>" >> $FILE;
        
    done;
done;


IFS=$IFS_BAK
IFS_BAK=

