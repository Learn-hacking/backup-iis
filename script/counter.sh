
#!/bin/bash
i=0
while [ $i -le 10 ]
do
((i++))
if [ $i == 6 ]
then
continue
fi
echo $i

done
