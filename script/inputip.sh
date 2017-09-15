#!/bin/bash

if [ -z $1 ]
then
printf "Please provide an Ip or Url.\n"
exit
fi

ip=$1

iptype=`echo $ip | cut -d "/" -f 3 | tr "." " " | awk '{print $NF}'`

forip()
{
reverselookupforip=`host $ip | cut -d "." -f 1-4`

a=$(printf  "$reverselookupforip\n")
printf "DNS for reverse lookup: \t%s\n" $a 
echo "Do you want to store output ?"
read usrinp
	if [ $usrinp == "y" ]
	then
printf "Enter file name to store output .\n"
read file

		if [ -f "tmp" ]
then 
rm tmp
		elif [ -f $file ]
then
rm $file
		fi

		if [ -z $file ]
		then
printf "Reverse DNS LookUp : \t%s\n" $a >> tmp

		else 
printf "Reverse DNS LookUp : \t%s\n" $a >> $file
		fi
		
else
exit

	fi

}

forurl()
{
b=$(host -t a $ip | grep "has address" | cut -d " " -f 4)
printf "Fordward LookUp : \t%s\n" $b
echo "Do you want to store output ?"
read usrinp
	if [ $usrinp == "y" ]
	then
printf "Enter file name to store output .\n"
read file

		if [ -f "tmp" ]
then 
rm tmp
		elif [ -f $file ]
then
rm $file
		fi

		if [ -z $file ]
		then
printf "Fordward LookUp : \t%s\n" $b >> tmp

		else 
printf "Fordward LookUp : \t%s\n" $b >> $file
		fi
		
else
exit

	fi
}

if [ $iptype == "in" ] || [ $iptype == "com" ] || [ $iptype == "org" ]
then

forurl

elif [[ $iptype =~ ^[-+]?[0-9]+$ ]]
then

forip

fi
