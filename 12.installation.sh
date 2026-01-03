#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo " ERROR:: User dooesnt have root access"
    exit 1 # here exit means leaving from the script and not proceeding further.
    #it is depends on exit code where 1 is failure so not proceed and 0 as success to proceed further

fi
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "Installing $2 is FAILURE"
        exit 1
    else
        echo " Installling $2 is SUCCESS"
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"

