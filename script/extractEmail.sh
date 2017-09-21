#!/bin/bash
echo "Enter Url"
read url
if [ -z $url ]
then
echo "Please provide an url"
exit
fi

cuturl()
{
curl -s -o file $url
a=`cat file | grep "mailto:" | sed 's/.*mailto://' | cut -d ">" -f 1 | cut -d '"' -f 1`

if [ -z $a ]
then
echo "No email's were found"
rm file
exit
else
printf "Email:= %s\n" $a
fi
echo "Enter file name to store output"
while read filename
do
if [ -z $filename ]
then
echo "Please enter file name"
else
printf "Email:= %s\n" $a > $filename
rm file
exit
fi
done

if [ -f file ]
then
rm file
fi

}


cuturl
