#!/bin/bash
# Starting sonar qube scanner for .NET
echo Starting sonar qube scanner for .NET

echo Dotnet version is:
dotnet --version

dotnet sonarscanner begin /k:"prj" /d:sonar.login="admin" /d:sonar.password="admin"
# Build solution using your favourite tools
dotnet build src/csharp/SampleApp/SampleApp5.csproj
dotnet sonarscanner end /d:sonar.login="admin" /d:sonar.password="admin"
