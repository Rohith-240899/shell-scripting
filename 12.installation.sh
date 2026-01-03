#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo " ERROR:: User dooesnt have root access"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql is FAILURE"
    exit 1
else
    echo " Installling mysql is SUCCESS"
fi
