#!/bin/bash

#grep -oE "^\w+\b" > nome.txt
#awk '{print $NF}' inscritos.txt > sobrenome.txt

#cat nome.txt sobrenome.txt | paste -d ';' - - > nome_sobrenome.csv

xlsx2csv -d ';' -s 1 /home/tiago/Downloads/inscritos_65c50d0a75f5c.xlsx | awk -F ';' '{print $1}' | grep -oE "^\w+\b" > nome.txt
xlsx2csv -d ';' -s 1 /home/tiago/Downloads/inscritos_65c50d0a75f5c.xlsx | awk -F ';' '{print $1}' | awk '{print $NF}' > sobrenome.txt

#cat nome.txt sobrenome.txt | paste -d ';' - - > nome_sobrenome.csv


# Nome dos arquivos de texto
arquivo1="nome.txt"
arquivo2="sobrenome.txt"

# Nome do arquivo CSV
arquivo_csv="nome_sobrenome.csv"

# Lendo os conteúdos dos arquivos de texto e armazenando-os em arrays
conteudo_arquivo1=($(< "$arquivo1"))
conteudo_arquivo2=($(< "$arquivo2"))

# Obtendo o número de linhas total (o máximo entre o número de linhas de cada arquivo)
num_linhas=$(( ${#conteudo_arquivo1[@]} > ${#conteudo_arquivo2[@]} ? ${#conteudo_arquivo1[@]} : ${#conteudo_arquivo2[@]} ))

# Escrevendo no arquivo CSV
echo "Coluna1;Coluna2" > "$arquivo_csv"  # Cabeçalho do CSV
for ((i=0; i<num_linhas; i++)); do
    # Obter conteúdo das linhas ou deixar em branco se não houver mais linhas disponíveis
    linha1="${conteudo_arquivo1[i]:-}"
    linha2="${conteudo_arquivo2[i]:-}"
    echo "${linha1};${linha2}" >> "$arquivo_csv"
done

echo "Arquivo CSV criado com sucesso!"