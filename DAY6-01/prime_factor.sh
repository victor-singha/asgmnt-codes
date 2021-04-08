#! /bin/bash
read -p "Enter the Number: " num
flag=1
for ((i=2;i<=num;i++))
do

	if [ $((num%i)) -eq 0 ]
	then
		for((j=2;j<i;j++))
		do
			if [ $((i%j)) -eq 0 ]
			then
				flag=0
				break;
			else
				flag=1
			fi
		done
		if [ $flag -eq 1 ]
		then
			echo $i
		fi
	fi
done
