@echo off

set workspace=C:\Users\bh0611\Desktop\MIW - Proyectos\SPAI\maven
set PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_51\bin
set PATH=%PATH%;C:\Users\bh0611\Desktop\Software\Maven\apache-maven-3.3.3\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_51
set M2_HOME=C:\Users\bh0611\Desktop\Software\Maven\apache-maven-3.3.3

echo -----------------------------------------
echo .(C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
echo .

cd %workspace%
:: -ff, --fail-fast. Stop at first failure in reactorized builds. Línea de comentario
echo ============ mvn -ff clean test (profile: develop) =========================================================================
echo .
call mvn -ff clean test 
if errorLevel 1 goto errorDevelop

echo .
:: -Dmaven.test.skip=true. To skip running the tests for a particular project
echo ============ call mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction (profile: preproduction) ================
echo .
call mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction
pause
exit

:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES...
pause
