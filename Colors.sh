#!/bin/bash

#COLORS

USERID=$(id -u)
LOGS_DIR="/var/log/shell-script"
LOGS_FILE="$LOGS_DIR/$0.log"
TIME_STAMP=$(date "+%Y-%m-%d-%H-%M-%S")
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#Check the root access

if [ $USERID -ne 0 ] then
    echo -e "Please run the script with $R ROOT $N"
    exit 1
fi


echo -e "$G $TIME_STAMP $N"
echo -e "$Y $LOGS_FILE $N"

