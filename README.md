# BikeSharting-Marketing

# Building the project in a container

How this works:

* when you call `docker-compose -f docker-compose.build.yml up`, the image `microsoft/dotnetbuildimage` is attempted to be instanced. 
* The first time, `microsoft/dotnetbuildimage` isn't avaialbe compose up will build the image using  `.\build\Dockerfile` 
* The root of the solution is volume mapped in
* `dotnet restore3`, `dotnet publish3 -c release -o bin/release/publishoutput` are executed
* Note: *3 is a temporary dotnet command for msbuild. This will be changed in the next few days

In the same folder as this readme.md file, call:
```
docker-compose -f docker-compose.build.yml up
```