#! /bin/bash
read -p "Enter start number: " start
read -p "Enter end number: " end
flag=0
for ((num=start;num<=end;num++))
do
	for ((i=2;i<num;i++))
	do
		if [ $((num%i)) -eq 0 ]
		then
			flag=0;
			break;
		else
			flag=1;
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo $num
	fi
done
