#!/bin/bash
START=`date +%s`
while [ $(( $(date +%s) - 2400 )) -lt $START ]; do
    curl localhost:5099 -v
    sleep `jot -r 1 10 100`
done