#!/bin/bash
# Restoring rules
echo SQ version is:
curl http://localhost:9000/api/server/version
echo $'\n'

echo Trying to restore some rules
curl -u admin:admin -X POST -F 'backup=@./rules/csharp-rules.xml' http://localhost:9000/api/qualityprofiles/restore
curl -u admin:admin -X POST -F 'backup=@./rules/golang-rules.xml' http://localhost:9000/api/qualityprofiles/restore
curl -u admin:admin -X POST -F 'backup=@./rules/java-rules.xml' http://localhost:9000/api/qualityprofiles/restore
curl -u admin:admin -X POST -F 'backup=@./rules/javascript-rules.xml' http://localhost:9000/api/qualityprofiles/restore
curl -u admin:admin -X POST -F 'backup=@./rules/python-rules.xml' http://localhost:9000/api/qualityprofiles/restore
curl -u admin:admin -X POST -F 'backup=@./rules/typescript-rules.xml' http://localhost:9000/api/qualityprofiles/restore
echo $'\n'
