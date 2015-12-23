#!/bin/sh
ip=104.236.155.167
echo "connect mysql service"
ssh -C -f -N -g -L 3306:127.0.0.1:3306 root@$ip
echo "connect debug port"
ssh -R 7777:localhost:7777 root@$ip
