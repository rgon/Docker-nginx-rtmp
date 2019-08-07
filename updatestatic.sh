#!/bin/bash
git pull
# Modify the currently-executed file's permissions (and probably its contents)? Let's try. Don't modify lines 1-4.
chmod +x updatestatic.sh

CONTAINERID=$(docker ps | grep 'momentolive' | awk '{ print $1 }')
#docker cp ./static ${CONTAINERID}:/var/www/momentolive
docker cp ./livestreamPlayer.html ${CONTAINERID}:/var/www/momentolive/index.html
