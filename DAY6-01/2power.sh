#! /bin/bash
read -p "Enter number: " num
for (( i=0;i<=num;i++ ))
do
	val=$((2**i))
	echo "2 ^" $i "=" $val
done
