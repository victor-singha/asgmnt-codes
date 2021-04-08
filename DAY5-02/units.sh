#! /bin/bash
read -p "Enter the unit in number: " unit
if [ $unit -eq 1 ]
then
	echo "Unit"
elif [ $unit -eq 10 ]
then
	echo "Ten"
elif [ $unit -eq 100 ]
then
	echo "Hundred"
elif [ $unit -eq 1000 ]
then
	echo "Thousand"
elif [ $unit -eq 10000 ]
then
	echo "Ten Thousand"
else
	echo "Not VALID"
fi
