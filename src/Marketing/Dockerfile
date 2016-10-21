FROM microsoft/aspnetcore:1.0.1
ARG source=bin/Release/publishoutput
WORKDIR /app
EXPOSE 8080
ENV ASPNETCORE_URLS http://+:8080
COPY $source .
ENTRYPOINT ["dotnet", "Marketing.dll"]
