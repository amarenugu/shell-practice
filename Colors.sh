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


echo "$G $TIME_STAMP $N"
echo "$Y $LOGS_FILE $N"

