#! /bin/bash
read -p "Enter a number: " num
flag=0
if [ $num -eq 1 -o $num -eq 2 ]
then
	flag=1
else
	for ((i=2;i<num;i++))
	do
		if [ $((num%i)) -eq 0 ]
		then
			flag=0
			break;
		else
			flag=1
		fi
	done
fi
if [ $flag -eq 1 ]
then
	echo $num "is Prime"
else
	echo $num "is Not Prime"
fi
