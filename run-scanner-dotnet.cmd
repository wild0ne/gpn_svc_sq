REM Starting sonar qube scanner for .NET
echo off
echo Starting sonar qube scanner for .NET

echo Dotnet version is:
dotnet --version

dotnet tool install --global dotnet-sonarscanner
dotnet sonarscanner begin /k:"prj" /d:sonar.login="admin" /d:sonar.password="admin"
REM Build solution using your favourite tools
dotnet build src\csharp\SampleApp\SampleApp.sln
dotnet sonarscanner end /d:sonar.login="admin" /d:sonar.password="admin"
