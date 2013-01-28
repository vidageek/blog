---
author: Jonas Abreu
title: Trocando chaves rsa rapidamente
layout: post

---
Não sei se muitas pessoas tem esse problema, mas eu tenho mais de um par de chaves (no caso, tenho a minha para a conta jonasabreu do github e a da conta vidageek, também no github). Como era muito chato troca-las manualmente, fiz um pequeno script em bash para fazer isso para mim.  
O script assume que as chaves atuais tem o nome de “id\_rsa” e “id\_rsa.pub” e as outras estão com um sufixo qualquer, como “id\_rsa.vidageek” e “id\_rsa.pub.vidageek”. O script deve estar na pasta .ssh .

    
    #! /bin/bash
    
    OLD_KEY=$1;
    NEW_KEY=$2;
    
    if [[ ! -f "id_rsa.$NEW_KEY" ]]; then
    	echo "could not find id_rsa.$NEW_KEY";
    	exit 1;
    fi;
    
    if [[ -f "id_rsa.$OLD_KEY" ]]; then
    	echo "$OLD_KEY already exists";
    	exit 2;
    fi;
    
    if [[ -f "id_rsa.pub.$OLD_KEY" ]]; then
    	echo "$OLD_KEY already exists";
    	exit 3;
    fi;
    
    mv id_rsa id_rsa.$OLD_KEY;
    mv id_rsa.pub id_rsa.pub.$OLD_KEY;
    
    mv id_rsa.$NEW_KEY id_rsa;
    mv id_rsa.pub.$NEW_KEY id_rsa.pub;
    
    

Como chaves rsa são algo meio ruim de se perder, o script faz algumas checagens básicas, mas use-o por sua conta e risco :D

Usage:

    ./switch_keys.sh nome_das_atuais nome_da_que_vai_ser_ativada
    

Exemplo:

    ./switch_keys.sh jonas vidageek
    

Troca as chaves atuais jonas pelas que estão com a terminação vidageek . 



















