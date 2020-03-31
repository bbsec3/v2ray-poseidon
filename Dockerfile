FROM alpine:latest

WORKDIR /root

COPY update.sh /root/update.sh
COPY home/ /home/
RUN su root 
RUN apk add --update sudo curl wget unzip tzdata bash
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone
RUN curl -L -s https://raw.githubusercontent.com/ColetteContreras/v2ray-poseidon/master/install-release.sh | sudo bash
CMD [ "bash", "/root/update.sh" ]