path_to_data=/media/mugutdinov/2ba6d383-45de-4938-b251-ccbb54093c2c4
docker run -d -p 127.0.0.1:8081:80 --cpuset-cpus="3" -e "WORKER_COUNT=1" -e "MEM_SIZE=1000000000" -v $path_to_data:/files --name=nginx_media1 nginx/hash_calculator
docker run -d -p 127.0.0.2:8081:80 --cpuset-cpus="4" -e "WORKER_COUNT=1" -e "MEM_SIZE=1000000000" -v $path_to_data:/files --name=nginx_media2 nginx/hash_calculator
docker run -d -p 127.0.0.3:8081:80 --cpuset-cpus="5" -e "WORKER_COUNT=1" -e "MEM_SIZE=1000000000" -v $path_to_data:/files --name=nginx_media3 nginx/hash_calculator
#docker run -d -p 127.0.0.2:8081:80 --cpuset-cpus="0" -e "WORKER_COUNT=1" -e "MEM_SIZE=1000000000" -v $path_to_data:/files --name=nginx_media1 nginx/hash_calculator
#docker run -d -p 127.0.0.3:8082:80 --cpuset-cpus="1-2" -e "WORKER_COUNT=2" -e "MEM_SIZE=2000000000" -v $path_to_data:/files --name=nginx_media2 nginx/hash_calculator
#docker run -d -p 127.0.0.4:8083:80 --cpuset-cpus="3-5" -e "WORKER_COUNT=3" -e "MEM_SIZE=3000000000" -v $path_to_data:/files --name=nginx_media3 nginx/hash_calculator
