#!/bin/bash
echo "Enter ip"
read ip
nmap -Pn -F $ip  | grep open > tmp
sed 's/open//g' tmp > tmp2 ;
tr -s '[:space:]' < tmp2 > tmp ; 
sed "s/ / type : /g" < tmp > tmp3
sed 's/\/tcp\>//g' tmp3 > final.txt 
rm tmp2 tmp tmp3

while read -r var
do
out=`echo $var`
printf "port : $out\n" 
done < final.txt

rm final.txt
