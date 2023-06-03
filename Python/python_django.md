# Requirements

criar uma lista de dependencias, semelhante ao Gemfiles
```bash
pip freeze > requirements.txt # Gera a lista com as dependências

pip install -r requirements.txt
```

# VENV
**virtualenv** 
Ambientes virtuais
```bash
# Instalação
python3 -m pip install --user virtualenv

# Criar ambiente
python3 -m venv env # env = nome do ambiente virtual

# Ativar venv, após isso as libs serão instaladas na venv
source env/bin/activate # Endereço do script gerado automaticamente

# Desativar
deactivate
```

# Python Base

## String's
```python
texto = "Aula Django"

texto[0] # A
texto[5:11] # Django
texto[5:] # Django

# Retorna tamanho
len(texto) # 11

# Retorna contagem do caracter/caracteres solicitado
texto.count('a') # 2
# Retorna contagem do caracter solicitado dentro do range
texto.count('a', 5, 11) # 1

# Retorna posição que o trecho começa
texto.find('Django') # 5

# Caixa auta
texto.upper() # 'AULA DJANGO'

# Caixa baixa
texto.lower() # 'aula django'

# Capitalize
texto.capitalize() # 'Aula django'

# Title
texto.title() # 'Aula Django'

# Split
texto.split() # ['Aula', 'Django']

# Join
list = texto.split()
''.join(list) # AulaDjango

'-'.join(list) # Aula-Django

# Strip
texto = '    Aula Django    '
texto.strip() # 'Aula Django'
texto.rstrip() # '    Aula Django'
texto.lstrip() # 'Aula Django    '
```

## Operadores lógicos

and e 
or ou
== igual
!= diferente

```python
a = True
b = False

if a and b:
    print('Foi')
else:
    print('Não foi')
# 'Não foi'

if a or b:
    print('Foi')
else:
    print('Não foi')
# 'Foi'

```

## Funções

def():

```python
def minha_funcao():
    print('funcao')
#####################################
def somar(a, b):
    resultado = a + b
    return resultado
#####################################
def envia_email():
    email = 'conta@gmail.com'
    senha = '1234'
    email_envio = 'contato@outro.com'
    return 'Email enviado'

pessoas = ['Fulano', 'Ciclano']

for pessoa in pessoas:
    email_enviado = envia_email()
    print(email_enviado)

#####################################

def envia_email(nome, email):
    nome_dest = nome
    email_dest = email
    return f'Emailenviado para {nome}, dona do email {email}'

pessoas = [
    {
        'nome': 'Fulano',
        'email': 'fulano@gmail.com'
    },
    {
        'nome': 'Ciclano',
        'email': 'ciclano@gmail.com'
    },
]

for pessoa in pessoas:
    email_enviado = envia_email(pessoa['nome'], pessoa['email'])
    print(email_enviado)

```

## Laços de repetição

```python
def envia_email(cliente):
    print(f'Email enviado para o cliente {cliente}!')

clientes = ['Ana', 'Jonas', 'Felipe', 'Cláudio', 'Renato'  ]
```

### for

```python
for cliente in clientes:
    envia_email(cliente)
```

Usando o indice e valor
```python
for i, cliente in enumerate(clientes):
    envia_email(cliente)
```

usando range
```python
for i in range(10):
    print(i)
```

### breake
```python
for i, cliente in enumerate(clientes):
    if i == 2:
        break
    envia_email(cliente)
```
### continue
pula a sequencia do elemente 
```python
for i, cliente in enumerate(clientes):
    if i == 2:
        continue
    envia_email(cliente)
```

### while

```python
numero = 0

while numero < 5:
    print(numero)
    numero += 1
```
## Estrutura de dados

### Listas
```python
carros = [] # inicia lista vazia
carros.append('Marea') # Adiciona elemento 
carros.append('Fusca') # Adiciona elemento no fim da lista

carros = ['Marea', 'Fusca'] # inicia lista com valores
carros.insert(1, 'Escort') # Adiciona o elemento no indice 1

carros.pop() # Remove o ultimo elemento
del carros[1] # Remove o indice 1
carros.remove('Fusca') # Remove o valor do elemento

carros.count('Fusca') # Mostra o somatório de ocorrências do valor
carros.reverse() # Inverte a ordem
carros.sort() # Ordena os valores 
```

### Compreensão de listas

```python
# Sem compreensão
numeros = [1, 2, 3, 4, 5]
numeros_dobrados = []
for numero in numeros:
    numeros_dobrados.append(numero * 2)
print(numeros_dobrados)

# Com compreensão
numeros = [1, 2, 3, 4, 5]
numeros_dobrados = [numero * 2 for numero in numeros] # [ expressão for item in lista ]
print(numeros_dobrados)
# Com compreensão e funcao
numeros = [1, 2, 3, 4, 5]

def dobro(numero):
    return numero *2

numeros_dobrados = [dobro(numero) for numero in numeros] # [ expressão for item in lista ]
print(numeros_dobrados)

# Outro exemplo
nomes = [ 'Tiago', 'Carol', 'Leonardo' ]
nomes_maiusculos = [nome.upper() for nome in nomes]

print(nomes_maiusculos)

nomes = [ 'Tiago', 'Carol', 'Leonardo' ]
nomes_maiusculos = [nome.upper() for nome in nomes if nome[0] == 'A'] # [ expressão for item in lista condição ]

print(nomes_maiusculos)
```

### Dicionário 
Em Ruby Hash

```python
meu_dicio = {} # Inicia dicionário vazio
meu_dicio = {'nome': 'Tiago', 'idade': 36, 'profissao': 'DevOps'}
meu_dicio['profissao'] #$ 'DevOps'
meu_dicio.get('nome') #$ 'Tiago' 
meu_dicio.pop('idade') # Remove elemento do dicionario
meu_dicio.keys() # Mostra as chaves
meu_dicio.values() # Mostra os valores
meu_dicio.clear() # Limpa o dicionário

pessoa = {
    'nome': 'Tiago',
    'idade': 36,
    'profissao': 'DevOps',
    'interesses': ['Python', 'Programação'],
    'pet': { 
        'nome': 'Loki',
        'idade': 3,
        'peso': '2kg'
    }
}
pessoa['interesses'][0] #$ 'Python'
pessoa.get('interesses')[0] #$ 'Python'
pessoa['pet']['nome'] #$ 'Loki'
pessoa.get('pet').get('nome') #$ 'Loki' 

pessoa['ano_nascimento'] = 1987 # Adiciona elemento novo ao dicionário
```

## Variaveis de ambiente

Variaveis do ambiente / PC / Container
```bash
export MINHA_VARIAVEL=valor #em linux
```
```powershell
set MINHA_VARIAVEL valor #em windows
```

```bash
export var1='123'
export var2='456'
export USUARIO='tiago'
```
```python
import os

user = os.environ.get('USUARIO')
var1 = os.environ.get('var1')
var2 = os.environ.get('var2')
```

## POO

Criar classe
```python
class Celular:
    marca = 'Nokia'
    modelo = 'Tijoão'
    cor = 'Azul'
    tem_camera = False
    bateria = 'Infinita'

    def fazer_ligações(self):
        print('Fazendo ligação...')

    def jogar_cobrinha(self):
        print('Jogando cobrinha...')
    
    def despertador(self):
        print('Despertando...')

    def calcular(self, v1, v2):
        return v1 + v2

celular = Celular()

print(celular.marca) #$ 'Nokia'

celular.depertador() #$ 'Despertando...'

print(celular.calcular(2, 4))
```