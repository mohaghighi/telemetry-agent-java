@ECHO off & setlocal enableextensions enabledelayedexpansion

:: strlen("\scripts\docker\") => 16
SET APP_HOME=%~dp0
SET APP_HOME=%APP_HOME:~0,-16%
cd %APP_HOME%

:: Check dependencies
java -version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO MISSING_JAVA
docker version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO MISSING_DOCKER

:: Build the container image
call sbt docker:stage
IF %ERRORLEVEL% NEQ 0 GOTO FAIL

xcopy /EFIKORVXY %APP_HOME%\scripts\docker\content\* target\docker\stage\app\
cd target\docker\stage
docker build -t azureiotpcs/telemetry-agent-java:testing .

:: - - - - - - - - - - - - - -
goto :END

:MISSING_JAVA
    echo ERROR: 'java' command not found.
    echo Install OpenJDK or Oracle JDK and make sure the 'java' command is in the PATH.
    echo OpenJDK installation: http://openjdk.java.net/install
    echo Oracle Java Standard Edition: http://www.oracle.com/technetwork/java/javase/downloads
    exit /B 1

:MISSING_DOCKER
    echo ERROR: 'docker' command not found.
    echo Install Docker and make sure the 'docker' command is in the PATH.
    echo Docker installation: https://www.docker.com/community-edition#/download
    exit /B 1

:FAIL
    echo Command failed
    endlocal
    exit /B 1

:END
endlocal
