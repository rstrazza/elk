#!/bin/bash

LOCAL_IP=`ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}'`
ENDPOINT="${LOCAL_IP}:5000"

# Setup data
data="environment=test"

docker run -d --restart=always --name logspout --volume=/var/run/docker.sock:/var/run/docker.sock --publish=127.0.0.1:8000:80 gliderlabs/logspout "syslog+tcp://${ENDPOINT}?structured_data=${data}"
