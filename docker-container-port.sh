#download image nginx
docker pull image nginx:lates

#port forwarding
# setup create when create container
docker container create --name [container name] --publish posthost:portcontainer image:tag
# example
docker container create --name contohngix --publish 8080:80 nginx:lates