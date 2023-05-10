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

