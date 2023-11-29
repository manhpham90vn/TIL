# list all container
docker ps -a

# copy file to container
docker cp foo.txt container_id:/tmp/foo.txt

# run bash in container width user postgres
docker exec -it --user postgres container_id bash

# build image
docker build .

# run
docker run -p 80:80 container_id

# stop
docker stop container_id