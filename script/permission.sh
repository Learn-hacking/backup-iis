#!/bin/bash
echo "Enter file path"
read fp

if [ -f $fp ]
then

a=$(stat $fp  | grep Access -m 1 | cut -d \( -f 2 | cut -d / -f 1)
	if [ $a = 0777 ]
		then
	echo "Permission matched"

		else
	echo "File doesn't matches with permission"
	fi
else
echo "Enter File path"
exit
fi
