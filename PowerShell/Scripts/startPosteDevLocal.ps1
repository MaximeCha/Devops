#PORTAINER
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

docker network local_docker_network

#RUN CONTAINER CACE-DB
docker run --network local_docker_network --rm --name cace-db -d cace-db

#RUN CONTAINER CACE
docker run --network local_docker_network --rm --name cace -d cace
