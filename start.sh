bash ./diff.sh
path_to_data=/media/mugutdinov/2ba6d383-45de-4938-b251-ccbb54093c2c4
docker run -d -p 127.6.6.6:8080:80 --link nginx_media1:media1 --link nginx_media2:media2 --link nginx_media3:media3 -v $path_to_data:/files --name=nginx_balancer nginx/balancer
