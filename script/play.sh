#!/bin/bash
a=10
echo "Enter a Number"
read b

if [ $b -gt $a ]
then
echo "You are too far from default value"
elif  [ $b -lt $a ]
then
echo "Your value is less then default value"
elif [ $b == $a ]
then
echo "You're right value is $a"
fi
