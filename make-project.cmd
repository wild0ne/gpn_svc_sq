REM Making new project named prj
echo off
echo SQ version is:
curl http://localhost:9000/api/server/version
echo.
echo Making new project
curl -u admin:admin -d project=prj -d name=prj --request POST http://localhost:9000/api/projects/create
