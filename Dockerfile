FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y wget
RUN apt install -y build-essential
RUN git clone https://github.com/DanyalITMO/nginx_hash_calculate_module nginx_module

RUN wget https://nginx.org/download/nginx-1.15.9.tar.gz && \
     tar -xvf nginx-1.15.9.tar.gz
RUN ls && pwd
RUN apt-get install -y libpcre3 libpcre3-dev
RUN apt install -y zlib1g zlib1g-dev
RUN cd nginx-1.15.9 && \
 ./configure --with-http_realip_module --with-http_stub_status_module --with-debug --add-module=../nginx_module && make -j 6 && make install
ENTRYPOINT /usr/local/nginx/sbin/nginx
