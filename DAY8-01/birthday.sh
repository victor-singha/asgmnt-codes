#! /bin/bash
declare -A months
declare -A results
for ((kid=1;kid<=50;kid++))
do
	val=$((RANDOM%12+1))
	months[$kid]=$((val))
done
for date in ${months[@]}
do
	results[$date]=$((${results[$date]}+1))
done
for ((month=1;month<=12;month++))
do
	echo "Month: "$month "No. of Births: "${results[$month]}
	for ((child=1;child<=50;child++))
	do
		if [ ${months[$child]} -eq $month ]
		then
			echo "-Child no.: "$child
		fi
	done
done
