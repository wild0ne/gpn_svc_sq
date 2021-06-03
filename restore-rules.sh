#!/bin/bash
# Restoring rules
echo SQ version is:
curl http://localhost:9000/api/server/version
echo /n

echo Trying to restore some rules
curl -u admin:admin -X POST -F 'backup=@./rules/csharp-rules.xml' http://localhost:9000/api/qualityprofiles/restore
echo /n
