#!/bin/bash

if [ "$(docker ps -q)" ]; then
    docker stop $(docker ps -q)
fi

if [ "$(docker ps -a -q)" ]; then
    docker rm $(docker ps -a -q)
fi
if [ "$(docker images -q)" ]; then
    docker rmi $(docker images -q)
fi

if [ "$(docker volume ls -q)" ]; then
    docker volume rm $(docker volume ls -q)
fi