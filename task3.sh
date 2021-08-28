#!/bin/bash

JAVA_PROCESSES=($(ps aux | grep java | grep -v 'grep'| awk '{print $2}'))
mkdir /tmp/investigation
for PID in "${JAVA_PROCESSES[@]}"
do
sudo lsof -p $PID > '/tmp/investigation/access_'"$PID"'.txt'
done
