#!/bin/bash

# Special variables

echo "All arguments: $@"
echo "First argument: $1"
echo "Second argument: $2"
echo "Number of arguments: $#"
echo "Script name: $0"
echo "Process ID: $$"
echo "Exit status of last command: $?"
echo "All arguments as a single string: $*"
echo "All arguments as an array: ${@}"
echo "All arguments as an array with index: ${@}"
echo " Who is running the script: $USER"
echo "Home directory: $HOME"
echo "Current working directory: $PWD"
echo "Shell name: $SHELL"
echo "Operating system: $OSTYPE"
echo "Current date and time: $(date)"
echo "Current PID: $$"
sleep 5
echo "Current PID after sleep: $$"
echo " exit status of last command: $?"
