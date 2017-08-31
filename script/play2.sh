#!/bin/bash
a=10
echo "Enter a Number"
read b
while [ $a -ne $b  ]
do
if [ $b -gt $a ]
then
echo "You are too far from default value"
read b
elif  [ $b -lt $a ]
then
echo "Your value is less then default value"
read b
elif [ $b == $a ]
then
echo "You're right value is $a"
exit
fi
done
