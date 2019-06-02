#!/bin/sh

cat >/etc/resolv.conf <<EOF
search lan
#nameserver 192.168.3.1
nameserver 127.0.0.1
EOF
service nginx onestart
unbound -c /root/unbound.conf

