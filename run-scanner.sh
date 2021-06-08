#!/bin/bash
# Starting sonar qube scanner
echo Starting sonar qube scanner
docker run --rm -e SONAR_HOST_URL="http://localhost:9000" -e SONAR_LOGIN="admin" -e SONAR_PASSWORD="admin" \
    -v "$(pwd)/src:/usr/src" --network=host sonarsource/sonar-scanner-cli -Dsonar.projectKey=prj \
    -Dsonar.sources=/usr/src/golang,/usr/src/javascript,/usr/src/python,/usr/src/typescript
