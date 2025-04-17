#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    dnf install mysql -y
    if [ $1 -ne 0 ]
    then 
        echo "$2 ... FAILURE"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi

}
if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute this script"
    exit 1 
fi

dnf list installed mysql
if [ $? -ne 0 ]
then  # not intalled
    dnf installed mysql -y
    VALIDATE $? "Installing MySQL"

else 
    echo "MySql is already ... Installed"
fi



dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $? "Installing GIT"
else
    echo "git is already ... Installed"
fi

