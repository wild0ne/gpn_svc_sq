REM Starting sonar qube scanner
@echo off
Setlocal EnableDelayedExpansion
echo Starting sonar qube scanner for Java with Ant
echo.
java -version
call ant -version

IF NOT EXIST "%cd%\src\java\lib\sonarqube-ant-task.jar" (
    echo "file not found: src\java\lib\sonarqube-ant-task.jar"
    goto :end
)

ant -buildfile ./src/java/build.xml all

:end