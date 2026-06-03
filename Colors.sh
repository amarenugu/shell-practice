#!/bin/bash

#COLORS

USERID=$(id -u)
LOGS_DIR="/var/log/shell-script"
LOGS_FILE="$LOGS_DIR/$0.log"
TIME_STAMP=$(date "+%Y-%m-%d-%H-%M-%S")

echo "$TIME_STAMP"
echo "$LOGS_FILE"