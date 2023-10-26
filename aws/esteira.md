AWS DevOps CI/CD Usando CodeBuild CodePipeline ECR e ECS Fargate
video 1
https://www.youtube.com/watch?v=pWQFqGItJbY&ab_channel=CloudTreinamentos

video 2
https://www.youtube.com/watch?v=vASKKO5yIsQ&t=1s&ab_channel=CloudTreinamentos

Video 3
https://www.youtube.com/watch?v=bCVpW8zlf4k
---------------------------------------
## Passos do processo
- Criar aplicação (hello world)
- Dockerizar aplicação
- Configurar GIT Repositório
- Automatizar build de imagem em docker
- Subir container como serverless fargates
- Alterar código e realizar push
- Verificar atualização em docker ativo

---------------------------------------

### Como dockerizar 
Com aplicação/página criada verificar melhor imagem para o que planeja-se entregar.

Criar Dockerfile

```bash
FROM ubuntu:latest # Definição de imagem a ser utilizada no container
# Execução de comandos para atualizar e instalar dependência da aplicação
RUN apt update 
RUN apt dist-upgrade -y
RUN apt install -y apache2

# Copiando arquivos da aplicação para dentro da imagem do container
COPY ./index.html /var/www/html/
```

Executar o build da imagem como teste:
```bash
docker build -t nome_da_imagem . # Usando o diretório "." para pegar o Dockerfile
```

Usando a imagem para criar container:
```bash
docker run -dit --name test-app -p 8080:80 nome_da_imagem
```

Verificar no navegador se temos acesso ao app.


### ECR Elastic Container Registry

Na AWS ir em ECR e clicar em iniciar, criando um repositório.

Configuração basica:

- Nome
- Privado


```
# Recupere um token de autenticação e autentique seu cliente Docker em seu registro. Use o AWS CLI:
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 167119109881.dkr.ecr.us-east-2.amazonaws.com

# Crie sua imagem do Docker usando o comando a seguir. 
docker build -t devops .

# Depois que a compilação for concluída, marque sua imagem para que você possa enviá-la para este repositório:
docker tag devops:latest 167119109881.dkr.ecr.us-east-2.amazonaws.com/devops:latest

# Execute o seguinte comando para enviar essa imagem para o repositório da AWS recém-criado:
docker push 167119109881.dkr.ecr.us-east-2.amazonaws.com/devops:latest
```

### Codebuild
Use CodePipeline with CodeBuild https://docs.aws.amazon.com/codebuild/latest/userguide/how-to-create-pipeline.html

Criar um arquivo buildspec.yml
```yml
version: 0.2 # versão do buildspec utilizado ref: 0.2

run-as: Linux-user-name # Seta o usuário a ser usado para realização da receita, se não setado será utilizado o root

env:
  shell: shell-tag
  variables:
    key: "value"
    key: "value"
  parameter-store:
    key: "value"
    key: "value"
  exported-variables:
    - variable
    - variable
  secrets-manager:
    key: secret-id:json-key:version-stage:version-id
  git-credential-helper: no | yes

proxy:
  upload-artifacts: no | yes
  logs: no | yes

batch:
  fast-fail: false | true
  # build-list:
  # build-matrix:
  # build-graph:
        
phases:
  install:
    run-as: Linux-user-name
    on-failure: ABORT | CONTINUE
    runtime-versions:
      runtime: version
      runtime: version
    commands:
      - command
      - command
    finally:
      - command
      - command
    # steps:
  pre_build:
    run-as: Linux-user-name
    on-failure: ABORT | CONTINUE
    commands:
      - command
      - command
    finally:
      - command
      - command
    # steps:
  build:
    run-as: Linux-user-name
    on-failure: ABORT | CONTINUE
    commands:
      - command
      - command
    finally:
      - command
      - command
    # steps:
  post_build:
    run-as: Linux-user-name
    on-failure: ABORT | CONTINUE
    commands:
      - command
      - command
    finally:
      - command
      - command
    # steps:
reports:
  report-group-name-or-arn:
    files:
      - location
      - location
    base-directory: location
    discard-paths: no | yes
    file-format: report-format
artifacts:
  files:
    - location
    - location
  name: artifact-name
  discard-paths: no | yes
  base-directory: location
  exclude-paths: excluded paths
  enable-symlinks: no | yes
  s3-prefix: prefix
  secondary-artifacts:
    artifactIdentifier:
      files:
        - location
        - location
      name: secondary-artifact-name
      discard-paths: no | yes
      base-directory: location
    artifactIdentifier:
      files:
        - location
        - location
      discard-paths: no | yes
      base-directory: location
cache:
  paths:
    - path
    - path

```

No AWS CODEBUILD criar um projeto de compilação

preenche segundo modelo

Vai em AWS IAM

Entrar em funções

Selecionar a role criada no processo de criação do projeto de compilação

Na ROLE anexar politicas

Adicionar a politica "AmazonEC2ContainerRegistryPowerUser" permitindo ao codebuilder escrever no ECR

No Codebuilder iniciar compilação

Após isso verificar no ECR se a imagem foi criada

## ECS 

Criar uma task

Utilizar o FARGATE para ser Serverless

Preencher os dados do container

Criar um cluster