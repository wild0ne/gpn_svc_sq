#!/bin/bash
# Bind rules to project
echo SQ version is:
curl http://localhost:9000/api/server/version
echo $'\n'
echo Binding rules to project
curl -u admin:admin -d 'project=prj&qualityProfile=GPN%20SVC%20way&language=cs' --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d 'project=prj&qualityProfile=GPN%20SVC%20way&language=go' --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d 'project=prj&qualityProfile=GPN%20SVC%20way&language=java' --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d 'project=prj&qualityProfile=GPN%20SVC%20way&language=js' --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d 'project=prj&qualityProfile=GPN%20SVC%20way&language=py' --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d 'project=prj&qualityProfile=GPN%20SVC%20way&language=ts' --request POST http://localhost:9000/api/qualityprofiles/add_project
echo $'\n'
