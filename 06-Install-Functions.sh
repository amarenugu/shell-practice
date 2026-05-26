#!/bin/bash

USERID=$(id -u)

# Check if the user is root
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

# first arg --> What are you trying to install
# second arg --> exit code

VALIDATE () {
    if [ $2 -ne 0 ]; then
        echo "Failed to install $1. Please check the logs for more details."
        exit 1
    else
        echo "$1 installed successfully."
    fi
}

echo " I am continuing with the installation of $1"

dnf list installed | grep $1
VALIDATE "$1" $?

if [ $2 -ne 0 ]; then
    echo "Failed to install $1. Please check the logs for more details."
    exit 1
else
    echo "$1 installed successfully."
fi
