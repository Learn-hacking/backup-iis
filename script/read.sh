#!/bin/bash
echo "Enter file path"
read input
if [ -z $input ]
then

echo "Please enter file path"
exit 
fi

export a=0
while IFS= read -r var
do
echo "$var"
a=`expr $a + 1`
printf "$a : "
done < "$input"
