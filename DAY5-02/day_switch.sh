#! /bin/bash
read -p "Enter day number: " num
case $num in
	0)
		echo "Sunday"
	;;
	1)
		echo "Monday"
	;;
	2)
		echo "Tuesday"
	;;
	3)
		echo "Wednesday"
	;;
	4)
		echo "Thursday"
	;;
	5)
		echo "Friday"
	;;
	6)
		echo "Saturday"
	;;
	*)
		echo "Not Valid Day Number !!"
	;;
esac
