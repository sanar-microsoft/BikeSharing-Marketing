#!bin/bash
docker-compose -f ./docker-compose.build.yml up
docker-compose -f ./src\Marketing/docker-compose.yml build
docker login bikeshare-exp.azurecr.io --username 95392ec2-0ace-480d-9470-2f40c480a4e1 --password bikeshare
docker tag bikesharing/marketing bikeshare-exp.azurecr.io/bikesharing/marketing:$(BUILD_BUILDNUMBER)
docker push bikeshare-exp.azurecr.io/bikesharing/marketing:$(BUILD_BUILDNUMBER)

