FROM microsoft/aspnetcore:1.0.1
ARG source=bin/Release/PublishOutput
WORKDIR /app
EXPOSE 80
COPY $source .
ENTRYPOINT ["dotnet", "Marketing.dll"]
