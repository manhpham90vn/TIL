# copy file to container
docker cp foo.txt container_id:/tmp/foo.txt

# run bash in container width user postgres
docker exec -it --user postgres container_id bash