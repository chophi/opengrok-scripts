#!/bin/bash
. java-8.env

opengrok_lib=~/opengrok/packages/opengrok-1.1-rc18/lib/opengrok.jar
configuration=~/opengrok/data/configuration.xml
source=~/opengrok/source
target_data_dir=~/opengrok/data/
ctags=/usr/local/bin/ctags

java $memory_setting \
     -jar $opengrok_lib \
     -c $ctags \
     -W $configuration \
     -P -S -v \
     -s $source \
     -d $target_data_dir \
     -i d:.repo \
     -i d:prebuilts \
     -i d:.log \
     -i d:.opengrok \
     -i d:out
