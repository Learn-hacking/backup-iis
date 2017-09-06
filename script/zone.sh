#!/bin/bash
echo "Please input url"
read url
a=$(host -t ns $url  | cut -d " " -f 4)
for i in $a
do
echo $i
host -l $url $i
done
