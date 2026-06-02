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
        echo " Installing $1 is failed ... Please check the logs for more details."
        exit 1
    else
        echo "$1 installed successfully."
    fi
}

echo " I am continuing with the installation process ...  "

dnf list installed mysql

if [$? -eg 0 ]; then
    echo "MySQL is already installed.... SKIPPING INSTALLATION"
else
    echo "Installing MySQL..."
    dnf install mysql -y
    VALIDATE "MySQL" $?
fi

dnf list installed nginx

if [$? -eq 0 ]; then
    echo "Nginx is already installed. SKIPPING INSTALLATION"
else
    echo "Installing Nginx..."
    dnf install nginx -y
    VALIDATE "Nginx" $?
fi
