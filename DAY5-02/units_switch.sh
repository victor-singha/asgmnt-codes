#! /bin/bash
read -p "Enter place: " place
case $place in
	1)
		echo "Unit"
	;;
	10)
		echo "Ten"
	;;
	100)
		echo "Hundred"
	;;
	1000)
		echo "Thousand"
	;;
	10000)
		echo "Ten Thousand"
	;;
	*)
		echo "Invalid Place!!"
	;;
esac
