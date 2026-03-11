#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ];then
 echo " Please run this script with root user access:"
 exit 1
fi
 echo "Installing Nginx"
 dnf install nginx -y
if [ $? -ne 0 ];then
 echo "Installing Nginx...Failure"
 exit 1
else
 echo "Insatlling Nginx...success"
fi
 echo "Installing Mysql"
 dnf install mysql -y
if [ $? -ne 0 ];then
 echo "Installing Mysql...Failure"
 exit 1
else
 echo "Insatlling Mysql...success"
fi
 echo "Installing Nodejs"
 dnf install nodejs -y
if [ $? -ne 0 ];then
 echo "Installing Nodejs...Failure"
 exit 1
else
 echo "Insatlling Nodejs...success"
fi
