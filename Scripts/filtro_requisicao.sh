#!/bin/bash

cd /var/log/apache2/ # ~/apache-log 

if [ -z $1 ]
then
    while [ -z $requisicao ]
    do
        read -p "Voce esqueceu de colocar o parametro ( GET, PUT, POST, DELETE): " requisicao
        parametro=$(echo $requisicao | awk '{ print toupper($1) }')
    done
else
    parametro=$(echo $1 | awk '{ print toupper($1) }')
fi

case $parametro in 
        GET)
        cat access.log | grep GET # cat apache.log | grep GET
        ;;
        
        POST)
        cat access.log | grep POST
        ;;
        
        PUT)
        cat access.log | grep PUT
        ;;
        
        DELETE)
        cat access.log | grep DELETE
        ;;

        *)
        echo "O parametro passado nao e valido"
        ;;
esac


