# limit memory
#   --memory 100 m=mega g=giga
# limit cpu
#   --cpus 1.5 / 1 / 2

docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest