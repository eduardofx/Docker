# Docker
Docker
_______________________________________________________________

Cria o docker ou inicia
> docker run hello-world

Lista Images
> docker images

Lista Containers que está Rodando
> docker ps

Lista Todos Containers
> docker ps -a

Remove Containers
> docker rm numero-id

Cria ambiente nginx (https://hub.docker.com/search/?isAutomated=0&isOfficial=0&page=1&pullCount=0&q=Nginx&starCount=0)
> docker run nginx
* Obs. Abrir outro terminar e rodar > docker ps

Rodar em background
> docker run -d nginx

Rodar em uma porta 8080 para 80 e nome webserver
> docker run -d -p 8080:80 --name webserver nginx

Parar docker
> docker stop id-ou-nome

Rodar dentro do container
>docker exec webserver uname -a

Rodar bash do servidor
>docker exec -it webserver bash

Atualizar OS
>apt-get update

Download vim
>apt-get install vim

Pasta raiz
>cd /usr/share/nginx/html/

>vim index.html

Apontar a parta local do servidor
>docker run -d --name web -p 8081:80 -v /c/Users/eduardo/Desktop/projeto-docker/html:/usr/share/nginx/html nginx

Apontar a parta atual do servidor
>docker run -d --name web -p 8081:80 -v $(pwd)/html:/usr/share/nginx/html nginx


Para e remove o container
>docker rm webserver -f

Criando DB WP
>docker run -d --name=dbserver -e "MYSQL_ROOT_PASSWORD=root" -e
 "MYSQL_DATABASE=wordpress" mysql

WP
> docker run -d --name=wordpress --link dbserver:mysql -p 8085:80 wordpress

Verifica o mysql
>ping mysql

Cria dockerfie
>vim Dockerfile


>$ docker build -t eduardo/php7 .

o --rm remove quando sair
> $ docker run -it --rm eduardo/php7 bash


#docker-compose

>$ mkdir .data/db -p

> $ cd .data/db

> $ docker-compose.exe up -d