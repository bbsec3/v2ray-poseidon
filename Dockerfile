FROM ubuntu:16.04

WORKDIR /root

COPY update.sh /root/update

RUN curl -L -s https://raw.githubusercontent.com/ColetteContreras/v2ray-poseidon/master/install-release.sh | sudo bash

CMD [ "bash", "/root/update.sh" ]