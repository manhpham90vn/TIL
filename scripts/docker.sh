# copy file to container
docker cp foo.txt container_id:/tmp/foo.txt

# run bash in container
docker exec -it container_id bash