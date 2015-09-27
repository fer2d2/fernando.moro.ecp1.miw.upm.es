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

cd %workspace%
echo ============ mvn clean test (profile: develop) =======================================================
echo .
call mvn clean test
pause
