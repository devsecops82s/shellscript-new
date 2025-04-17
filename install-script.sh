#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute this script"
    exit 1 
fi

dnf list installed mysql
if [ $? -ne 0 ]
then  # not intalled
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing MySql ... FAILURE"
        exit 1
    else
        echo "Installing MySql ... SUCCESS"
else 
    echo "MySql is already... Installed"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then 
    echo "Installing MySql ... FAILURE"
    exit 1
else 
    echo "Installing MySql ... SUCCESS"
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installing GIT ... FAILURE"
        exit 1
    else 
        echo "Installing GIT ... SUCCESS"
    fi
else
    echo "git is already ... Installed"
fi