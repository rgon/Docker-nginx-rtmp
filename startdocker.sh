#!/bin/bash
git pull
docker build -t momentolive .

PREVCONTAINER=$(docker ps | grep 'momentolive' | awk '{ print $1 }')
docker kill $PREVCONTAINER

sudo docker run -d -p 1935:1935 -p 8080:8080 -e DASH=true momentolive
