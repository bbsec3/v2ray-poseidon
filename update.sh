su root
echo -e -n "$CONFIG_JSON" > /etc/v2ray/config.json
/usr/bin/v2ray/v2ray -config /etc/v2ray/config.json
