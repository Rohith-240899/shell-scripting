#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo " ERROR:: User dooesnt have root access"
    exit 1 # here exit means leaving from the script and not proceeding further.
    #it is depends on exit code where 1 is failure so not proceed and 0 as success to proceed further
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ....  $R FAILURE $N"
        exit 1
    else
        echo -e " Installling $2... $G SUCCESS $N"
    fi
}

dnf list installed mysql

if [ $? -ne 0]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else 
    echo -e "Mysql already exist ....$Y SKIPPING $N"
fi

dnf list installed nginx

if [ $? -ne 0]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else 
    echo -e "Nginx already exist ....$Y SKIPPING $N"
fi