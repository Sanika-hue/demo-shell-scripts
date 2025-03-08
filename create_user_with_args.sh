#!/bin/bash


read -p $1

read -p $2

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo " ===== Creation of username completed =====" 
sudo userdel $1

echo "===== Deletion of user completed ====="

cat /etc/passwd | grep $1 | wc

echo "as wc is 0 the user is deleted"
