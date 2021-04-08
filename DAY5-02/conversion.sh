#! /bin/bash
read -p "Enter the number that you want to convert: " num
echo "[1] Feet to Inch"
echo "[2] Feet to Meter"
echo "[3] Inch to Feet"
echo "[4] Meter to Feet"
read -p "Make a choice: " choice
case $choice in
	1)
		inch=$((num*12))
		echo $num "ft =" $inch "inch"
	;;
	2)
		meter=$((num*(3/10)))
		echo $num "ft =" $meter "meter"
	;;
	3)
		feet1=$((num/12))
		echo $num "inch = " $feet1 "ft"
	;;
	4)
		feet2=$((num/(3/10)))
		echo $num "meter =" $feet2 "ft"
	;;
	*)
		echo "Make a Valid Choice..!!"
	;;
esac
