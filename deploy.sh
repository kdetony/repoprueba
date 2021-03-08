#!/bin/bash

echo "Validando repositorio GIT"

cd /root 

if [ -d "repotest" ]; then
 echo "Ya se descargo el repo, continuamos"
else 
 echo "Descargando repo"
 git clone https://github.com/kdetony/repotest.git 
fi

cd /root/repotest

echo "Ready Deploy"

docker-compose build && docker-compose up -d

echo "Validamos deploy"

netstat -ltn | grep 8181  > /root/message.txt
