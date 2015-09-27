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

echo "============ mvn clean test (profile: develop) ======================================================="
echo
mvn clean test

echo
read -p "Press enter to continue..."
echo