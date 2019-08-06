#!/bin/bash
git pull
docker build -t momentolive .
docker run -d momentolive
