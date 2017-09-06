#!/bin/bash
echo  "Do you want to talk"
while :
do 
read input
case $input in
yes)
echo "fuck you exit now";;
no)
echo "damn you"
break;;
esac
done
