#! /bin/bash
declare -a numbers
count=11
for ((i=0;i<100;i++))
do
	if [ $i -eq $count ]
	then
		numbers[$i]=$i
		count=$((count+11))
	fi
done
echo ${numbers[@]}
