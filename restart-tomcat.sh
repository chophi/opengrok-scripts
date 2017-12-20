#!/bin/bash
. java-8.env
x=`ps axww | grep tomcat | wc -l`
echo "Number of tomcat process grep-ed: $x"
if [ $x -ge 4 ]; then
    kill -9 `ps axww | grep tomcat | head -1 | cut -d ' ' -f 1`
fi
~/opengrok/packages/apache-tomcat-8.5.24/bin/startup.sh
