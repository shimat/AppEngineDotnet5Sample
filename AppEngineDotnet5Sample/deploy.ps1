Remove-Item -Path bin -Recurse -ErrorAction Ignore
Remove-Item -Path obj -Recurse -ErrorAction Ignore

dotnet clean --configuration Release
dotnet build --configuration Release
dotnet publish --no-build --configuration Release

gcloud app deploy app.yaml --project dotnet5-sample
