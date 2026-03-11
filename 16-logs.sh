#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
if [ $USERID -ne 0 ];then
 echo " Please run this script with root user access:"
 exit 1
fi
mkdir -p $LOGS_FOLDER
VALIDATE(){
   if [ $1 -ne 0 ];then
     echo "$2...Failure"
     exit 1
    else
     echo "$2...success"
    fi
}
 echo "Installing Nginx"
 dnf install nginx -y
 VALIDATE $? "Installing Nginx"

 echo "Installing Mysql"
 dnf install mysql -y
 VALIDATE $? "Installing Mysql"

 echo "Installing Nodejs"
 dnf install nodejs -y
 VALIDATE $? "Installing Nodejs"
