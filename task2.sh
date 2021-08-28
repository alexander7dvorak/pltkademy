#!/bin/bash

# crontab -e
# Add line:
# 0 */6 * * * cd PATH_TO_SCRIPTS_DIRECTORY; ./task2.sh
NCHARACTERS=1000
CURRENT_TIME=$(date "+%Y.%m.%d-%H.%M.%S")
for NUM in `seq 1 10`
do 
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c $NCHARACTERS >'test_'"$CURRENT_TIME"'_'"$NUM"'.txt';
done
