#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ];then
 echo " Please run this script with root user access:"
 exit 1
fi
VALIDATE(){
   if [ $1 -ne 0 ];then
     echo "$2...Failure"
     exit 1
    else
     echo "$2...success"
    fi
}
 echo "Installing Nginx"
 dnf install nginxx -y
 VALIDATE $? "Installing Nginx"

 echo "Installing Mysql"
 dnf install mysql -y
 VALIDATE $? "Installing Mysql"

 echo "Installing Nodejs"
 dnf install nodejs -y
 VALIDATE $? "Installing Nodejs"
