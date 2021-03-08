#!/bin/bash

echo "Validando repositorio GIT"

cd /root 

if [ -d "repotest" ]; then
 echo "Ya se descargo el repo, continuamos"
else 
 echo "Descargando repo"
 git clone https://github.com/kdetony/repotest.git 
fi

cd /root/repotest/html

echo "Ready Deploy Web"

docker-compose build && docker-compose up -d

echo "Validamos deploy"

netstat -ltn | grep 8283 > /root/message.txt
