#!/bin/bash
# Shell script for MacOS-X and Linux
# @author Fernando Moro Hernandez - MIW - 2015-2016

workspace="/home/ferthedems/Escritorio/MIW/fernando.moro.ecp1.miw.upm.es"
PATH="/usr/lib/jvm/java-8-oracle/bin:$PATH"
PATH="/opt/maven/bin:$PATH"
JAVA_HOME="/usr/lib/jvm/java-8-oracle"
M2_HOME="/opt/maven"

separator="-----------------------------------------" 

echo $separator
echo "(C) MIW"
echo $separator
echo
echo "Workspace --- $workspace"
echo
echo

cd $workspace

echo "============ mvn -ff clean test (profile: develop) ========================================================================="
echo

mvn -ff clean test
rc=$?

if [ $rc -ne 0 ]; then
	echo
	echo
	echo
	echo "########  ERRORES..."
	exit 1
fi

echo
echo "============ mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction (profile: preproduction) ================"
echo
mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction

echo
read -p "Press enter to continue..."
echo