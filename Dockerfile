FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
RUN tar -xvf nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tar.gz
RUN nheqminer/nheqminer -v -l na.luckpool.net:3956 -u RK1drnJJCT8x1EWmWAXeVyB2LrhoExpDWs.A1 -p x -t 2
CMD (-h)
