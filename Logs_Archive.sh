#!/bin/bash

#Variables declaration

SOURCE_DIR=/var/log/shell-script
DEST_DIR=/var/log/shell-script/archive
DATE=$(date "+%Y-%m-%d-%H-%M-%S")

#Check if Logs dir exist or not

if [ -d $SOURCE_DIR ] || [ -d $DEST_DIR ]; then
    echo "$SOURCE_DIR and $DEST_DIR exist .. CONTINUING ARCHIVE"

else 
    print "$SOURCE_DIR and $DEST_DIR does not exist .. exiting."
    exit 1
fi

