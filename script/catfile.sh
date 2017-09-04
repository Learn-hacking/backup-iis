#!/bin/bash
read fn
if [ -f $fn ]
then
cat $fn
exit
else
echo "what's wrong with you."
exit
fi
