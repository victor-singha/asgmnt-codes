#! /bin/bash
declare -a numbers
numbers=(3 -3 0 6 -5 -1)
n=${#numbers[@]}
for ((i=0;i<n-2;i++))
do
	for ((j=i+1;j<n-1;j++))
	do
		for ((k=j+1;k<n;k++))
		do
			if [ $(( ${numbers[$i]}+${numbers[$j]}+${numbers[$k]} )) -eq 0 ]
			then
				echo "Sum of" ${numbers[$i]}"," ${numbers[$j]}"," ${numbers[$k]} "is ZERO"
			fi
		done
	done
done
