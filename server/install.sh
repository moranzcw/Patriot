#!/bin/sh

mkdir ss
cd ss

apt update
apt install -y python-pip
apt install -y python-setuptools
apt install -y shadowsocks
ssserver -p 11170 -k 112358 -m aes-256-cfb --user nobody -d start

wget https://github.com/moranzcw/Patriot/raw/master/server/server_linux_amd64
chmod +777 ./server_linux_amd64
nohup ./server_linux_amd64 -t "127.0.0.1:11170" -l ":4000" -mode fast3 -nocomp -sockbuf 16777217 -dscp 46 &
