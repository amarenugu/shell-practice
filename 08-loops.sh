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

for package in $@
do
    echo "$TIMESTAMP [INFO] Installing $package
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOGS_FILE
        if [ $? -eq 0 ]; then
            echo "Installation of $package completed successfully"
        else 
            echo "Installation of $package Failed or already installed"
        fi
    fi
done
