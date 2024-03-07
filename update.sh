#!/bin/bash


echo "Build new image."
docker build -t adrenlinerush-doc .
docker image list

echo "Stop running container."
docker ps
docker stop adrenlinerush-doc
docker ps

echo "Remove old container."
docker rm adrenlinerush-doc

echo "Start new container with new image."
docker run --name adrenlinerush-doc -p 127.0.0.1:3000:3000 -d --restart always adrenlinerush-doc
docker ps
