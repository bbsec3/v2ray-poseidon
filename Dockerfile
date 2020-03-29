FROM ubuntu:16.04

WORKDIR /root

COPY update.sh /root/update.sh
COPY home/ /home/
RUN su root
RUN apt-get update 
RUN apt-get install sudo curl wget unzip tzdata ntpdate -y
RUN apt-get clean all 
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN curl -L -s https://raw.githubusercontent.com/ColetteContreras/v2ray-poseidon/master/install-release.sh | sudo bash
RUN ls /home
CMD [ "bash", "/root/update.sh" ]