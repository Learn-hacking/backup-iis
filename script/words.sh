#!/bin/bash
echo "Enter file name "
read file

now=0
nol=0

readfile()
{

while read var
do
set $var
now=`expr $now + $# `
nol=`expr $nol + 1`

done < "$file"

}

if [ -f $file ];
then
readfile
echo "$now"
echo "$nol"
else
echo "Please enter filename"
fi
