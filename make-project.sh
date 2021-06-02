# making new project named prj
echo SQ version is:
curl http://localhost:9000/api/server/version
echo /n
echo Making new project
curl -u admin:admin -d 'project=prj&name=prj' --request POST http://localhost:9000/api/projects/create
echo /n
