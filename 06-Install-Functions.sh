#!/bin/bash

USERID=$(id -u)

# Check if the user is root
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi
