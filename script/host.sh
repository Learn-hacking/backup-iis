#!/bin/bash
echo "Enter ip"
read ip
export a=$(ping $ip | grep ttl -m 1 | cut -d = -f 3 | cut -d " " -f 1)
if [ $a == 128 ]; then
echo "Host is Windows"
else
echo "Host is Linux"
fi
