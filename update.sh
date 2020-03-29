su root
curl -L -s https://raw.githubusercontent.com/ColetteContreras/v2ray-poseidon/master/install-release.sh | sudo bash
service v2ray stop
ntpdate ntp.aliyun.com
echo -e -n "$V2_CONFIG" > /etc/v2ray/config.json
service v2ray restart
service v2ray status