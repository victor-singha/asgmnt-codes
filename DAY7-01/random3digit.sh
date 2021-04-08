#! /bin/bash
declare -a randoms
for ((count=0;count<10;count++))
do
	randoms[$count]=$((RANDOM%900+100))
done
echo "ARRAY GENERATED: " ${randoms[@]}
largest=0
largest2=0
smallest=999
smallest2=999
for num in ${randoms[@]}
do
	if [ $num -gt $largest ]
	then
		largest=$num
	fi
done
for num2 in ${randoms[@]}
do
	if [ $num2 -gt $largest2 -a $num2 -ne $largest ]
	then
		largest2=$num2
	fi
done
echo "2nd Largest Number: " $largest2
for item in ${randoms[@]}
do
	if [ $item  -lt $smallest ]
	then
		smallest=$item
	fi
done
for item2 in ${randoms[@]}
do
	if [ $item2 -lt $smallest2 -a $item2 -ne $smallest ]
	then
		smallest2=$item2
	fi
done
echo "2nd Smallest Number: " $smallest2
