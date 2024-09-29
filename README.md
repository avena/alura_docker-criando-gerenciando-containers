## Docker: criando e gerenciando containers
[Docker: criando e gerenciando containers](https://cursos.alura.com.br/course/docker-criando-gerenciando-containers)


## Aplicacação Node
https://github.com/danielartine/alura-docker/blob/aula-3/app-exemplo.zip?raw=true


## EXPOSE configurado

É possivel ver em ports quais são as portas usadas
```
docker ps
CONTAINER ID   IMAGE                COMMAND       CREATED         STATUS         PORTS      NAMES
cbea907e1b4e   avena/app-node:1.0   "npm start"   4 seconds ago   Up 3 seconds   3000/tcp   silly_cohen
```

Assim na aula, mudando no codigo usando o process.ENV, e no docker file o ARG e ENV, podendo assim buildar novamente imagem, e quando fazer o run
```
docker run -d -p 9090:6000 avena/app-node:1.2
```

Tem em ports explicdo as portas:
```
$ docker ps
CONTAINER ID   IMAGE                COMMAND       CREATED              STATUS              PORTS                    NAMES
224388f0092e   avena/app-node:1.2   "npm start"   About a minute ago   Up About a minute   0.0.0.0:9090->6000/tcp   angry_newton
```