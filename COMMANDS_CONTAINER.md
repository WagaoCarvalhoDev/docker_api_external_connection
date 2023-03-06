# Docker container 

docker run -it ubuntu
docker ps
docker ps -a
docker container ls
docker container -a
docker stop <nome ou id do container>
docker run -d nginx (background)
docker run -d -p 80:80 nginx
docker run -d -p 3000:80 nginx (porta 3000 exposta no navegador)
docker start <nome ou id do container> (herda os comandos da criação do container)
docker run -d -p 80:80 <nome do container> nginx
docker logs <id>
docker -rm <id>
docker -rm -f <if> (-f force)

# Docker images
docker build .
docker build -t <name> .
docker build -t <name>:<tag> .
docker run -d -p --name <name> 3000:3000
docker pull <imagem>
docker image tag <id> <image>
docker image tag <id> <image>:<tag>
docker image -it <id>
