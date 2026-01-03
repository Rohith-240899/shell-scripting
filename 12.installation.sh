#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo " ERROR:: User dooesnt have root access"
    exit 1
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

