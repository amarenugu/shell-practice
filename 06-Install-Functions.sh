#!/bin/bash

USERID=$(id -u)

# Check if the user is root
if [ $USERID -eq 0 ]; then
    echo "You are running this script as root."
else
    echo "You are running this script as a non-root user."
fi