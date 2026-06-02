#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"
TIMESTAMP=$(date "+%Y-%m-%d-%H-%M-%S")

#Check root access or not

if [ $USERID -ne 0 ]; then
    echo " Please run this script with the root access"
    exit 1
fi