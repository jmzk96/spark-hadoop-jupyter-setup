#!/bin/bash

docker network create -d bridge bds-network

cd ./hadoop/base 
docker build . -t hadoop-base
cd ../..

cd ./spark/base 
docker build . -t spark-base 
cd ../..

docker-compose up