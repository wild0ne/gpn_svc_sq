#!/bin/bash
# Starting sonar qube scanner
echo Starting sonar qube scanner for Java with Ant
java -version
ant -version
if [ ! -f src/java/lib/sonarqube-ant-task.jar ]; then
    echo "file not found: src/java/lib/sonarqube-ant-task.jar"
    exit 1
fi
ant -buildfile ./src/java/build.xml all
