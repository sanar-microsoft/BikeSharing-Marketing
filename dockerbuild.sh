#!bin/bash
set -e
cd ./src/Marketing/
echo docker-compose build 
docker-compose build

echo docker tag bikesharing/marketing bikeshare-exp.azurecr.io/bikesharing/marketing
docker tag bikesharing/marketing bikeshare-exp.azurecr.io/bikesharing/marketing

echo docker login bikeshare-exp.azurecr.io -u 95392ec2-0ace-480d-9470-2f40c480a4e1 -p bikeshare
docker login bikeshare-exp.azurecr.io -u 95392ec2-0ace-480d-9470-2f40c480a4e1 -p bikeshare

echo docker push bikeshare-exp.azurecr.io/bikesharing/marketing
docker push bikeshare-exp.azurecr.io/bikesharing/marketing