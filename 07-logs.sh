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

# first arg what are you trying to install
# second arg is exit code

VALIDATE () {
    if [ "$2" -ne 0 ]; then
        echo " Installing $1 is failed" | tee -a "$LOGS_FILE"
        exit 1
    else
        echo " Installing $1 is successful" | tee -a "$LOGS_FILE"
    fi
}

# Installation continuing...    

dnf list installed mysql &>> "$LOGS_FILE"
if [ $? -ne 0 ]; then
    dnf install mysql -y &>> "$LOGS_FILE"
    VALIDATE "MySQL" $?
else
    echo "MySQL is already installed....SKIPPING" | tee -a "$LOGS_FILE"
fi

# Insallation NGNIX

dnf list installed nginx &>> "$LOGS_FILE"
if [$? -ne 0]; then
    dnf install nginx -y &>> "$LOGS_FILE"
    VALIDATE "Nginix" $?
else
    echo "Nginx is already installed ....SKIPPING" | tee -a "$LOGS_FILE"
fi