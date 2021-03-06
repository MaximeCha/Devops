#PORTAINER
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

docker network create docker_local_network

#RUN CONTAINER CACE-DB
#docker run --network docker_local_network --rm --name cace-db -d cace-db
docker run -p 27017:27017 --rm --name cace-db -d cace-db
#docker run --network host --rm --name cace-db -d cace-db

#RUN CONTAINER CACE
#docker run --network docker_local_network -p 8586:8586 --rm --name cace -d cace
docker run -p 8586:8586 --rm --name cace -d cace
#docker run --network host --rm --name cace -d cace
