#!/bin/bash
# configuro iptables para bloquear la comunicación entre clientes de la red 25.1.x.x
# iptables -A FORWARD --src 25.1.0.0/16 --dst 25.1.0.0/16 -j DROP

cp /etc/tinc/rsa_key.pub /etc/tinc/hosts/vps 
/usr/sbin/tincd -D -U nobody