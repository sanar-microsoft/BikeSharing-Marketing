#!bin/bash
set -e
dotnet restore3
rm -rf $(pwd)src/Marketing/bin/Release/PublishOutput
dotnet publish3 src/Marketing/Marketing.csproj -c release -o $(pwd)src/Marketing/bin/Release/PublishOutput 
