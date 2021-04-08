#! /bin/bash
read -p "Enter a year " year
if [ $year -gt 999 ]
then
	if [ $((year%4)) -eq 0 -a $((year%100)) -ne 0 ]
	then
		echo "It is a LEAP year"
	elif [ $((year%400)) -eq 0 ]
	then
		echo "It is a LEAP year"
	else
		echo "NOT a LEAP year !!"
	fi
else
	echo "Enter a valid year"
fi
