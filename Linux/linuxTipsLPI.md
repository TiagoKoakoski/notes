# Notes

## OBS

Comando para abrir OBS

```bash
flatpak run com.obsproject.Studio
```

Process:

- Selecionar entrada/tela
- Iniciar gravacao

<https://us02web.zoom.us/w/87928414353?tk=D6Jsz_CZqE    JAIRPICyplseoUJND-oD0zOj9U1v7p3sJyXbM.DQMAAAAUePEgkRZDSTRpTFFpS1FBV3JfMl9sUzdrd3R3AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&pwd=RDVEelc0eVg0N2VXeTFZNDlyUnp6Zz09#success>

## LinuxTips

Comando para versao de sistema linux (debian)

```bash
lsb_release -a
```

pipe more cria paginacao

```bash
ls -lha | more
```

Informacoes
/proc

- cpuinfo
- meminfo

Logs

```bash
/var/log
```

### LS

```bash
ls -l # lista
ls -l -f # lista em ordem de criacao/alteracao
ls -F # Lista em ordem de criacao/alteracao com caracter para representar o tipo do arquivo(pasta /, link simbolico @, executavel *)
ls -ln # Lista os arquivos mostrando o dono e p grupo de forma numerica
ls -lt # Lista os arquivos por data de alteracao(mais novos primeiros)
ls -ltr # Lista os arquivos por data de alteracao revertida(mais velhos primeiros)
ls -lX # Lista os arquivos por extencao
ls -laR # Lista os arquivos recursivamente
ls --color=auto # Adiciona cores
```

### PWD

```bash
pwd # Exibe local atual
```

### MKDIR

```bash
mkdir -p diretorio/diretorio # Permite criar diretorios dentro de diretorios
```

### TREE

```bash
tree # Mostra os diretorios e arquivos em forma de arvore
tree -A
```

### RMDIR

```bash
rmdir diretorio # Remove diretorios vazios
rmdir -p diretorio/diretorio # Remove caminhos de diretorios, apenas vazios
```

### CAT

Vizualizar conteudo de arquivos

```bash
cat -n arquivo # Exibe o numero da linha no arquivo
cat -b arquivo # Exibe o numero da linha no arquivo, apenas linhas com conteudo
cat -s arquivo # Exibe o arquivo removendo linhas em branco duplicadas
cat -E arquivo # Exibe o arquivo com um $ no final de cada linha
cat -T arquivo # Exibe o arquivo alterando o tab por ^I
zcat arquivo.gz # Cat para arquivos compactados gz
bzcat arquivo.bz2 # Cat para arquivos compactados bz2
xzcat arquivo.xz # Cat para arquivos compactados xz
tac arquivo # Exibe o arquivo de forma invertida
```

### RM

Remove arquivos

```bash
rm arquivo # Remove arquivos
rm -r diretorio # Remove diretorios
rm -rf diretorio # Remove diretorios e forca
```

### CP

Copia arquivos

```bash
cp arquivo_origem arquivo_destino # Copia arquivos
cp -v arquivo_origem arquivo_destino # Verbose
cp -Rf arquivo_origem arquivo_destino # Copia completa e force
cp -vs arquivo_origem arquivo_destino # Cria link simbolico
cp -u directory directory_2 # Copia apenas arquivos atualizados
cp -p directory directory_2 # Copia mantendo permissoes se possivel
```

### MV

Move arquivos

```bash
mv nome_original nome_novo
```

### Curingas

#### *

```bash
ls a* # Lista arquivos que comecem com a letra a
ls *path # Lista arquivos que terminem com path
ls a*r # Lista arquivos que comecem com a letra a e termine com r
```

#### ?

```bash
ls m? # Lista arquivos que comecem com m e tenham mais um caracter
ls m?? # Lista arquivos que comecem com m e tenham mais dois caracter
ls a?t* # Lista arquivos que comecem com a tenham um caracter qualquer depois um t e terminem com qualquer final
```

#### []

Determina intervalo

```bash
ls m[a-c] # Lista arquivos que comecem com m e seja seguido de um caracter entre a e c
ls m[^a-c] # Lista arquivos que comecem com m e seja seguido de um caracter que nao esteja entre a e c
```

#### {}

Determina parte do nome

```bash
ls x{zd,ze}* # lista arquivos que comecem com x e sejam seguido de zd ou ze
```

## Comandos diversos

### Clear

```bash
clear # limpa a tela
```
ctrl + l

### Date

```bash
date # Exibe data e hora
date -s 08:34 # Ajusta hora HH:MM
date 030315262023 # Ajusta para MMDDHHMMAAAA
date +%d # mostra o dia
date +%d%Y # mostra o dia e o ano 032023
date +%d-%y # mostra o dia e o ano 03-23
```

Comando para salvar data e hora na Placa
```bash
hwcloak --systohc 
```
### df

```bash
df # Mostra os sistemas de arquivos e seus dados de espaco
```

### ln

```bash
ln /bin/ls ls # Cria um hard link, faz referencia ao inode | apenas para arquivos e executaveis
ln -s /bin/ls  bin-ls # Cria um link simbolinco, tanto diretorios quanto arquivos e executaveis

```

### du
```bash
du -h # Exibe os arquivos e conta os tamanhos
du -hs # Exibe a soma das tamanhos do diretorio
```

### find

```bash
find . -name palavra # busca a palavra no diretorio .
find . -type d -name palavra # busca apenas diretorios com a palavra no diretorio .
find /diretorio -type f -name palavra # busca apenas arquivos com a palavra no diretorio /diretorio
find /etc -mtime -1 # traz todos os arquivos modificados 1 dia atras no diretorio /etc
find /etc -amin -10 # Mostra todos os arquivos que foram acessados nos ultimos 10 min no diretorio /etc
find /etc -cmin -1 # Mostra todos os arquivos que foram criados no ultimo min no diretorio /etc
find /usr -gid 1000 # Mostra arquivos do grupo 1000
find /usr -uid 1000 # Mostra arquivos do usuario 1000
find /usr -size +1000 # Mostra arquivos maiores que 1000 blocos
find /usr -type b # Dispositivos de blocos
find /usr -type p # Dispositivos de pipes
find /usr -type c # Dispositivos de caracter
find /usr -type s # Sockets
find /usr -type l # links simbólicos

find . -atime 2 # Arquivos alterados nos ultimos 2 dias
find . -amin 2 # Arquivos alterados nos ultimos 2 minutos

find . -size +100M # arquivos maiores que 100MB
```

### free
```bash
free # exibe a quantidade de memória
free --mega # exibe a quantidade de memória em mega
free --kibi # exibe a quantidade de memória em kbites
free --mebi # exibe a quantidade de memória em mbites
free --gibi # exibe a quantidade de memória em gbites
free --tebi # exibe a quantidade de memória em tbites
free --mega -s 1 # Exibe com atualizações de 1s em tempo real
```

### grep
```bash
grep 'www-data' /etc/passwd # busca www-data no arquivo passwd
grep -v 'www-data' /etc/passwd # busca todas as linhas que não tenham www-data no arquivo passwd
grep -f /tm/expressao /etc/passwd # abre e le o arquivo expressao e busca seu conteudo em passwd
grep -i 'WWW-data' /etc/passwd # ignora maiusculas e minusculas
grep -iE '^www-data.*nologin$' /etc/passwd # busca usando expressão regular
grep -iF '.*' /etc/passwd # busca caracteres especiais
grep -ri 'palavra' # busca 'palavra' de forma recursiva
grep -rin 'palavra' # busca 'palavra' de forma recursiva e mostra o numero da linha que contem a expressão
```

### head
```bash
head /etc/passwd # mostra as 10 primeiras linhas do arquivo
head -n 3 /etc/passwd # mostra as 3 primeiras linhas do arquivo
```

### nl
```bash
nl /etc/passwd # Numera as linhas do arquivo
```

### su
Aumenta os privilégios do usuário
```bash
adduser nome_do_usuario sudo # permite que o usuário escale privilégios
```

### uname
```bash
uname # retorna nome do sistema operacional
uname -a # Retorna nome, versão do kernel, arquitetura
uname -r # retorna versão atual do Kernel
uname -n # retorna nome da maquina
```

### Reiniciar forçado
```bash
echo o >/proc/sysrq-trigger
```

### wc

```bash
wc nome_do_arquivo # Mostra numero de linhas, numero de palavras e 39 caracteres
wc -c nome_do_arquivo # Mostra numero de 39 caracteres
wc -l nome_do_arquivo # Mostra numero de linhas
wc -w nome_do_arquivo # Mostra numero de palavras
```

### chattr
Altera atributos
```bash
lsattr # Mostra os atributos dos arquivos da pasta
lsattr nome_da_pasta -d # Mostra atributos da pasta
chattr +i arquivo # Add imutavel ao arquivo
chattr -i arquivo # Remove imutavel ao arquivo
chattr +a arquivo # Add apend ao arquivo / echo "linha 1" >> arquivo
chattr +a pasta # Add apend ao arquivo / não permite remoção de arquivos da pasta
chattr =aie * # Add imutavél, append e extend aos arquivos
chattr +c arquivos # Add salvamento compactado
```

### cut

```bash
cut -d ":" -f 1 /etc/passwd # Pega o primeiro campo usando o ":" como delimitador
cut -d ":" -f 1,7 /etc/passwd # Pega o primeiro e o setimo campo usando o ":" como delimitador
```

### cmp e diff
Comparador de arquivos

```bash
cmp arquivo_1 arquivo_2 # Mostra se existem diferenças em bytes
diff arquivo_1 arquivo_2 # Mostra as linhas diferentes no arquivo
diff -u arquivo_1 arquivo_2 # Mostra as linhas diferentes no arquivo
diff -ru pasta_1 pasta_2 # Mostra as diferenças em pastas
```

### diff + patch


### Segundo plano

Executar comando em segundo plano utilizar & após o comando
```bash
sleep 10 &
jobs # mostra o que esta funcionando
fg 1 # Traz o processo 1 para primeiro plano

# Para jogar um programa rodando para segundo plano segurar CTRL + z, executar comando: 
bg 1

# Para finalizar um processo de segundo plano pode-se trazer para primeiro plano e CTRL + c, ou:
jobs # mostra os processos em segundo plano
kill %3 # encerra o processo 3
```

## Executar comandos de maneira sequencial 
Utilizar entre os comandos ";"

```bash
apt update ; apt upgrade -y ; echo "Finalizado"
```



## Saida de comando em arquivo

```bash
cat passwd > teste.txt # manda o resultado para o arquivo teste.txt sobreescrevendo o conteudo de teste.txt caso haja algum
cat passwd >> teste.txt # manda o resultado para o arquivo teste.txt realizando a adição do comando, não sobreescrevendo

```