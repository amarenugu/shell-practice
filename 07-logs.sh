#!/bin/bash

USERID=$(id -u)
LOG_DIR=/var/log/shell-script
LOGS_FILE="$LOG_DIR/$0.log" # /home/ec2-user/shell-logs.sh.log

# Check if the script is run as root
if [ "$USERID" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi