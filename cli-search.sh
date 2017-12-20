#!/bin/bash
. java-8.env
opengrok_lib=~/opengrok/packages/opengrok-1.1-rc18/lib/opengrok.jar
configuration=~/opengrok/data/configuration.xml
class=org.opensolaris.opengrok.search.Search

java $memory_setting \
     -cp $opengrok_lib \
     $class \
     -R $configuration \
     $@
