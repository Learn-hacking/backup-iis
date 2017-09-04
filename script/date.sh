#!/bin/bash
export a=$(date +"%d-%m-%y")
export b=$(date +"%H:%M:%S" )
#echo $a
#echo $b
printf "Current User:\t%s\t\nDate:\t\t%s\t\nTime:\t\t%s\t\n" $USER $a $b
