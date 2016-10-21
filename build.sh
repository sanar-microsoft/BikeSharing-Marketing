#!bin/bash
docker-compose -f ./docker-compose.build.yml up
docker login bikeshare-exp.azurecr.io -u 95392ec2-0ace-480d-9470-2f40c480a4e1 -p bikeshare
docker tag bikesharing/marketing bikeshare-exp.azurecr.io/bikesharing/marketing:$(Build.BuildNumber)
docker push bikeshare-exp.azurecr.io/bikesharing/marketing:$(Build.BuildNumber)
