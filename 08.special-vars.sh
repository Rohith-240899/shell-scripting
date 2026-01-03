#!/bin/bash

echo "All variables passed to the script:$@"
echo "All variables passed to the script:$*"
echo "Script Name is:$0"
echo "Current Directory:$PWD"
echo "Current User:$USER"
echo "Current Home directory of $USER is:$HOME"
echo "PID of the script is:$$"
sleep 50 &
echo "PID of the last command in background is:$!"

