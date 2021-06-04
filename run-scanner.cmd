REM Starting sonar qube scanner
echo off
echo Node.js version is
node --version
echo Starting sonar qube scanner
sonar-scanner -Dsonar.host.url=http://localhost:9000 -Dsonar.login=admin -Dsonar.password=admin -Dsonar.projectKey=prj -Dsonar.sources=src
