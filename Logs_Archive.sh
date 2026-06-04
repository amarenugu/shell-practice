#!/bin/bash

#Variables declaration

SOURCE_DIR=/var/log/shell-script
DEST_DIR=/var/log/shell-script/archive
DATE=$(date "+%Y-%m-%d-%H-%M-%S")


#Check if Logs dir exist or not

if [ -d $SOURCE_DIR ]; then
    echo "$SOURCE_DIR exist"
fi
