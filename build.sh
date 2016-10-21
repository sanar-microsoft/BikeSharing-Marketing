#!bin/bash
set -e
dotnet restore3
rm -rf $(pwd)/publish/marketing
dotnet publish3 src/Marketing/Marketing.csproj -c release -o $(pwd)/publish/marketing 
