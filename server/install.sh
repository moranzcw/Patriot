#!/bin/sh

apt update
apt install python-pip
apt install python-setuptools
ssserver -p 11170 -k 112358 -m aes-256-cfb --user nobody -d start

./server_linux_amd64 -t "127.0.0.1:11170" -l ":4000" -mode fast3 -nocomp -sockbuf 16777217 -dscp 46