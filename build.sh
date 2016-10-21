#!bin/bash
set -e
echo docker-compose -f ./docker-compose.build.yml up 
docker-compose -f ./docker-compose.build.yml up

echo docker-compose -f ./src/Marketing/docker-compose.yml build
docker-compose -f ./src/Marketing/docker-compose.yml build

echo docker login bikeshare-exp.azurecr.io --username 95392ec2-0ace-480d-9470-2f40c480a4e1 --password bikeshare
docker login bikeshare-exp.azurecr.io --username 95392ec2-0ace-480d-9470-2f40c480a4e1 --password bikeshare

echo docker tag bikesharing/marketing bikeshare-exp.azurecr.io/bikesharing/marketing:22
docker tag bikesharing/marketing bikeshare-exp.azurecr.io/bikesharing/marketing:22

echo docker push bikeshare-exp.azurecr.io/bikesharing/marketing:22
docker push bikeshare-exp.azurecr.io/bikesharing/marketing:22

