#!/bin/bash
START=`date +%s`
while [ $(( $(date +%s) - 2400 )) -lt $START ]; do
    curl localhost:5099
    sleep `echo $(( ( RANDOM % 100 )  + 1 ))`
done