#!/bin/bash
git pull
docker build -t momentolive .
sudo docker run -d -p 1935:1935 -p 8080:8080 momentolive
