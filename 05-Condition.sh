#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]; then
    echo "The number is greater than 20."
elif [ $NUMBER -eq 20 ]; then
    echo "The number is equal to 20."
else
    echo "The number is less than 20."
fi
