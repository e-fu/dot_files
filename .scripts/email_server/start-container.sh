#!/usr/bin/env bash
# VPN Container
docker run -v $OVPN_DATA:/etc/openvpn --restart=always -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn # macbook efu
docker run -v $OVPN_DATA:/etc/openvpn --restart=always -d -p 1195:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn # offline / unused
docker run -v $OVPN_DATA:/etc/openvpn --restart=always -d -p 1196:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn # iphone efu
docker run -v $OVPN_DATA:/etc/openvpn --restart=always -d -p 1197:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn # ipad efu

docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock --restart=always v2tec/watchtower

# docker run -d -e VPN_USER=efu --restart=always -e VPN_PASSWORD=GuS24two2014 -e VPN_PSK=YmSfJ3Tnt -p 500:500/udp -p 4500:4500/udp -p 1701:1701/udp --privileged philplckthun/strongswan
# docker run -d --restart=always kannix/monero-miner -a cryptonight  -o stratum+tcp://mine.moneropool.com:3333 -u 43ePsFgPN6wcgj3CYwebQahTNt825BC3FTSwFpUvqDwuj1ubtHgyk6eAXgsDrv6WZvhFJKQuCV3t9YoeMERPhJDkPxQEsMY -p x --threads 4
