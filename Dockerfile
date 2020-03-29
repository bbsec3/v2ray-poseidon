FROM ubuntu:16.04

WORKDIR /root

COPY update.sh /root/update.sh
RUN su root
RUN apt-get update 
RUN apt-get install sudo curl wget unzip -y
RUN apt-get clean all 
RUN curl -L -s https://raw.githubusercontent.com/ColetteContreras/v2ray-poseidon/master/install-release.sh | sudo bash

CMD [ "bash", "/root/update.sh" ]