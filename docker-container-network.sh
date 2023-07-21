docker network create --driver bridge mongonetwork

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=tade --env MONGO_INITDB_ROOT_PASSWORD=tade mongo:latest

docker image pull mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_ADMINUSERNAME:tade --env ME_CONFIG_MONGODB_ADMINPASSWORD:tade --env ME_CONFIG_MONGODB_URL:"mongodb://tade:tade@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress

docker network disconnect mongonetwork mongodb
