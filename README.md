# BikeSharing-Marketing

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

# Running the site

This particular version of the sample runs on port 8080. This is a temporary workaround until app services resovles a design gap blocking lower range PORTS


## directly on your dev machine

Once built, `cd .\bin\Release\publishoutput\`
From the published directory, `dotnet marketing.dll`
This will run the site at http://localhost:5000

## run in a container

Once built, `docker-compose up -d`
Find the dynamically assigned port: `docker ps`
```
 IMAGE                   PORTS
 bikesharing/marketing   0.0.0.0:32786->8080/tcp
```
http://localhost:32767