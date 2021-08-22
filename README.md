# AppEngineDotnet5Sample
Google App Engine Flex + ASP.NET Core 5 (.NET 5)

## Deployment Instructions
### Method 1 (build app inside Docker container)
```ps1
gcloud app deploy app.yaml --project your-project-name
```

### Method 2 (build app outside Docker container)
```ps1
PS> cd AppEngineDotnet5Sample
PS> .\deploy.ps1
deploy.ps1:

dotnet build --configuration Release
dotnet publish --no-build --configuration Release

gcloud app deploy app.yaml --project your-project-name
```
