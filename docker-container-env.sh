# pull image mongodb
docker image pull mongo:latest

#create container with environment
docker container create --name [container name] --publish porthost:portcontaner --env=[key] --env=[key] image:tag

#example
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=tade --env MONGO_INITDB_ROOT_PASSWORD=tade mongo:latest