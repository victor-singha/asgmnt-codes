#! /bin/bash
read -p "Enter power: " power
i=0
limit=256
result=0
while [ $i -le $power -a $result -lt $limit ]
do
	result=$((2**i))
	echo "2 ^" $i "=" $result
	i=$((i+1))
done
