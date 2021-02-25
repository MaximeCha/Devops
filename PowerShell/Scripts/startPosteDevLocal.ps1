#PORTAINER
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce


#RUN CONTAINER CACE-DB
docker run -network local_docker_network -p 27017:27017 --name cace-db -d mongo

#RUN CONTAINER CACE
docker run -network local_docker_network -p 8586:8586 -p 27017:27017 -rm --name cace -d cace
