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


  
  
