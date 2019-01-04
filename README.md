# docker-learning

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

````