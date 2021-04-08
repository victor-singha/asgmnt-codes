#! /bin/bash
read -p "Enter nth Number: " num
for ((i=1;i<=num;i++))
do
	if [ $i -ne $num ]
	then
		printf "1/"$i" + "
	else
		printf "1/"$i
	fi
done
