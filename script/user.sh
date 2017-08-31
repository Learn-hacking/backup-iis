#!/bin/bash
echo "enter 1st value"
read a
echo "enter 2st value"
read b
if [ $a -gt $b ];then
echo "$a is grater then $b"
else
echo "$a is less then $b"
fi
