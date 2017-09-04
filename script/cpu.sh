#!/bin/bash
total=$(free -h | grep -m 1 Mem | cut -d " " -f 12 )
free_mem=$(free -h | grep -m 1 Mem | cut -d " " -f 52)
a=0
printf "\n"
echo "################ Ram Usage ####################"
printf "\n"
output_file="text.txt"
printf "Total ram   : \t%s GB\n"  $total
printf "Free ram    : \t%s GB\n" $free_mem
cat /proc/cpuinfo | grep "cpu MHz" | cut -d : -f 2 | cut -d " " -f 2 > text.txt
printf "\n"
echo "################ Cpu Usage ####################"
printf "\n"
while IFS= read -r var
do

a=`expr $a + 1`
printf "Cpu $a usage : \t%s GHz\n"  $(echo "$var") 
done < $output_file
rm $output_file
printf "\n"
