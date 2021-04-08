#! /bin/bash
declare -a randoms
for ((count=0;count<10;count++))
do
	randoms[$count]=$((RANDOM%900+100))
done
echo "ARRAY GENERATED: " ${randoms[@]}
n=${#randoms[@]}
temp=0
for ((i=0;i<$n;i++))
do
	for ((j=1;j<$((n-i));j++))
	do
		if [ ${randoms[$((j-1))]} -gt ${randoms[$j]} ]
		then
			temp=${randoms[$((j-1))]}
			randoms[$((j-1))]=${randoms[$j]}
			randoms[$j]=$temp
		fi
	done
done
echo "SORTED ARRAY: "${randoms[@]}
echo "2nd Largest Number: " ${randoms[8]}
echo "2nd Smallest Number: " ${randoms[1]}
