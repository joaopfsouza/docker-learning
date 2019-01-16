# Docker-Learning

Aprendizado de docker

# Primeiros comandos

````
docker --version 

Docker version 18.09.0, build 4d60db4
````

````
docker info 

Containers: 25
 Running: 0
 Paused: 0
 Stopped: 25
Images: 45
Server Version: 18.09.0
Storage Driver: overlay2
 Backing Filesystem: extfs
 Supports d_type: true
 Native Overlay Diff: true
Logging Driver: json-file
Cgroup Driver: cgroupfs
...
````

**Para testar a instalação do docker**

```
    docker run hello-word

Hello from Docker!
This message shows that your installation appears to be working correctly.
```

**Listar as imagens baixadas**

```
docker images ls
```

**Lista todos containers**

```
docker container ls --all

```

[Get Started - Lesson 1](https://docs.docker.com/get-started)


# Udemy Docker Course
[Udemy Docker Course](https://www.udemy.com/docker-mastery)

```
docker help

    -Options
    -Management Commands
    -Commands
```
**Docker command Format**

```
docker  <command> <sub-command> (options)
```

## Images vs Conatiner

Images: São as bibliotecas, binários e código fonte que faz sua aplicação funcionar

Containers: São instancias das imagens 

Registry: Repositório de imagens

## Exemplos ##

```
 docker container run --publish 12346:80 nginx
```
  *Roda uma imagem do nginx, mapeando porta 12346 da máquina com a porta 80 do container.*


```
 docker container run --publish 12346:80 --detach nginx
```
  *Utilizando o **--detach** faz o container rodar em background.*

```
 docker container ls
```
  *Lista os containers rodando.*

  
```
 docker container ls -a
```
  *Lista todos containers tanto no estado stop como start.*

```
 docker container stop #id
```
  *Para um container.*

```
 docker container start #id
```
  *Iniciar um container.*


```
 docker container run --publish 12346:80 --detach --name webhost nginx
```
  *Criar um container em background, mapeado na porta 12346 e com nome de **webhost** da imagem do nginx.*


```
 docker container logs #id
```
  *Mostra o log de um container.*


```
 docker container top #id
```
  *Mostra os processos rodando dentro do container.*


```
 docker container rm #ids
```
  *Remove imagens paradas.*

# Background docker container run

1. Verifica se a imagem está no cache local de imagens;
2. Verifica repositórios remoto pela imagem;
3. Baixa a versão da imagem solicitada;
4. Cria um novo container com a imagem e prepara para iniciar;
5. Fornece um ip virtual dentro da rede privada da engine do docker;
6. Abre a porta 12346 do localhost para porta 80 do container;
7. Inicia o container usando **CMD** do Docker file


# Homework 1

  Executar simultaneamente as seguintes imagens, nas portas indicadas e adicionar o nome para cada container:
  - nginx (85:80)
  - mysql (8580:80)
  - httpd(apache) (3306:3306)

Ao iniciar o container do mysql passar uma variável de ambiente **MYSQL_RANDOM_ROOT_PASSWORD=yes** , através do comando --env. Executar *docker container logs* no mysql para achar o password random gerado.

Após a realização da atividade parar os container e remover

[Docker Documentation](https://docs.docker.com/)

## Resolução

```
1. docker container run --name nginx --publish 85:80 --detach nginx

2. docker container run --name mysql --publish 8580:80 --detach --env MYSQL_RANDOM_ROOT_PASSWORD=yes mysql

R.:Ohmo6cher7eechoo1ohphohjeixae5ad

3. docker container logs mysql

4. docker container run --name apache --publish 3306:3306 --detach httpd
````

# Commands Docker

#Lista de processos dentro do container
```
docker container top
```
#Detalha as configurações de um container
```
docker container inspect 
```
#Mostra a estatistica dos containers
```
docker container stats
```
#Liberar um prompt dentro do container  
+ -i: iterativo;
+ -t: abre o terminal similar ssh;
+ Command Bash: libera o terminal do container "root user"
```
docker container -it [container] [bash]
```

#Inicia container parado e libera terminal 
+ -i: iterativo;
+ -a: atacha a comunicação com container;

```
docker container start -ai [container] 
``` 

#Libera o terminal de um container rodando 
+ -i: iterativo;
+ -t: abre o terminal similar ssh;
+ Command Bash: libera o terminal do container "root user"
  
```
docker container exec -it [container] bash
``` 

#Lista as imagens em cache  
```
docker images ls
``` 

#Atualiza versão de imagem 
```
docker pull [image]
``` 

# Docker Networks

Cada container conecta em uma rede virtual privada *"bridge"*

O Deamon configura um host IP por onde os container irão acessar a internet (NAT)

Não é necessário usar "-p" para mapear portas nos containers

É possível atrelar nenhuma ou várias networks para um container

Para utilizar diretamente host ip dá máquina é necessário por --net=host

````
docker container run -p 80:80 --name webhost -d nginx

docker contianer port webhost

````

Mostra o mapeamento de portas
````
docker contianer port webhost
````

Permite extrair o ip do container
````
docker container  inspect --format '{{.NetworkSettings.IPAddress}}' webhost

````
