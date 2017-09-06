#!/bin/bash
echo "Enter user ip "
read ipadd
export a=`echo $ipadd | cut -d . -f 1`

if [[ $a -ge 1 && $a -lt 127 ]];
then
echo "Class A network"
elif [[ $a -ge 128 && $a -lt 192 ]];
then
echo "Class B network"
elif [[ $a -ge 192 && $a -lt 224 ]];
then
echo "Class C network"
elif [[ $a -ge 224 && $a -lt 240 ]];
then
echo "This is a multicast address"
elif [[ $a -ge 240 && $a -le 255 ]];
then
echo "This is a Broadcast address"
elif [[ $a -ge 127 && $a -lt 128 ]];
then
echo "This is a Loop Back address"
else
echo "Invalid Ip address"
fi
