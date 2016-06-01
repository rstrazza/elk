#!/bin/bash

docker run --rm --name hello-sample4 busybox /bin/sh -c 'while true; do echo "Hello $(date)"; sleep 2; done'
