docker container stop mongovolume

# container backup
docker container create --name nginxbackup --mount "type=bind,source=/home/tadeus/Development/Learning/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume, source=mongodata,destination=/data" nginx:latest

#start container
docker container start nginxbackup

#start exec
docker container exec -i -t nginxbackup /bin/bash

#script backup
tar cvf /backup/backup.tar.gz /data

#running backup create file in folder backup
#file created in folder backup backup.tar.gz

#stop container nginxbackup
docker container stop nginxbackup

#remove container nginxbackup
docker container rm nginxbackup
#start again container mongovolume
docker container start mongovolume


#pull ubuntu
docker image pull ubuntu:latest

# stop container mongovolume
docker container stop mongovolume

# create script
docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/tadeus/Development/Learning/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

# start again mongovolume
docker container start mongovolume


