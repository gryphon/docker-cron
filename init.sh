#!/bin/bash

echo "Installing crontabs..."

schedule="${SCHEDULE:-*  *  *  *  *}"
task="${TASK:-echo 'Task executed'}"

echo "${schedule}    ${task} > /dev/stdout" > /etc/crontabs/root

echo "Crontab is:"

crontab -l

echo "Running cron..."

crond -l 2 -f
