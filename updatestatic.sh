#!/bin/bash
CONTAINERID=$(docker ps | grep 'momentolive' | awk '{ print $1 }')
#docker cp ./static ${CONTAINERID}:/var/www/momentolive
docker cp ./livestreamPlayer.html ${CONTAINERID}:/var/www/momentolive/index.html
