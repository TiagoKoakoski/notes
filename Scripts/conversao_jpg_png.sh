#!/bin/bash


# CAMINHO_IMAGENS=~/Downloads/imagens cria constante


# convert $CAMINHO_IMAGENS/$1.jpg $CAMINHO_IMAGENS/$1.png Pega o primeiro parametro informado pelo usuário


# Realiza a conversão de varias entradas
# for imagem in $@
# do
#     convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
# done
converte_imagem(){
cd ~/Download/imagens
if [ ! -d png ]
    then
        mkdir png
fi

for imagem in *.jpg
do
    local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }' )
    convert $imagem $imagem_sem_extensao.png
done
}

converte_imagem 2>erros_conversao.txt # Gera um arquivo com as mensagens de erro
if [ $? -eq 0 ]
then
    echo "Conversão realizada com sucesso"
else
    echo "Houve falha na conversão"
fi