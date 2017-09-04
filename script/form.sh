#!/bin/bash
echo "Create account"
read a
if [ $a=y ]
then
echo "Enter your name"
read name
echo "Enter your email address"
read email
echo "Enter password"
read pass
printf "UserName:\t%s\nEmail:\t\t%s\nPassword:\t%s\n " $name $email $pass

else
echo "wasted my time"
fi
