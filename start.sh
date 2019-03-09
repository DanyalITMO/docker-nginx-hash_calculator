docker run -d -p 8081:80 --cpus=1  -v /home/danyal/dockerWithVim/data:/somedata --name=nginx_media1 nginx/hash_calculator
docker run -d -p 8082:80 --cpus=1  -v /home/danyal/dockerWithVim/data:/somedata --name=nginx_media2 nginx/hash_calculator
docker run -d -p 8083:80 --cpus=1  -v /home/danyal/dockerWithVim/data:/somedata --name=nginx_media3 nginx/hash_calculator
docker run -d -p 8080:80 --link nginx_media1:media1 --link nginx_media2:media2 --link nginx_media3:media3 --name=nginx_balancer nginx/balancer
