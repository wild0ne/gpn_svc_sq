REM Bind rules to project
echo off
echo SQ version is:
curl http://localhost:9000/api/server/version
echo.
echo Binding rules to project
curl -u admin:admin -d project=prj -d "qualityProfile=GPN%%20SVC%%20way" -d language=cs --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d project=prj -d "qualityProfile=GPN%%20SVC%%20way" -d language=go --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d project=prj -d "qualityProfile=GPN%%20SVC%%20way" -d language=java --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d project=prj -d "qualityProfile=GPN%%20SVC%%20way" -d language=js --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d project=prj -d "qualityProfile=GPN%%20SVC%%20way" -d language=py --request POST http://localhost:9000/api/qualityprofiles/add_project
curl -u admin:admin -d project=prj -d "qualityProfile=GPN%%20SVC%%20way" -d language=ts --request POST http://localhost:9000/api/qualityprofiles/add_project
echo.
