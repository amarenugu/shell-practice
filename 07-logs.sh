#!/bin/bash

USERID=$(id -u)
LOG_DIR=/var/log/shell-script
LOGS_FILE="$LOG_DIR/$0.log" # /home/ec2-user/shell-logs.sh.log

# Check if the script is run as root
if [ "$USERID" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

# Create log directory if it doesn't exist
if [ ! -d "$LOG_DIR" ]; then
    mkdir -p "$LOG_DIR"
    echo "Created log directory: $LOG_DIR"
fi

# Create log file if it doesn't exist
if [ ! -f "$LOGS_FILE" ]; then
    touch "$LOGS_FILE"
    echo "Created log file: $LOGS_FILE"
fi