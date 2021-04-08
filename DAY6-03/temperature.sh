#! /bin/bash
function toFahrenheit(){
	degC=$1
	degF=$(((degC*(9/5))+32))
	echo $degF
}
function toCelsius(){
	degF=$1
	degC=$(((degF-32)*(5/9)))
	echo $degC
}

echo "[1] Celsius -> Fahrenheit"
echo "[2] Fahrenheit -> Celsius"
read -p "Enter Choice: " choice
read -p "Enter Temperature: " temp
case $choice in
	1)
		if [ $temp -lt 0 -o $temp -gt 100 ]
		then
			echo "Invalid! Celsius [0-100]"
		else
			result=$(toFahrenheit $temp)
			echo $result
		fi
	;;
	2)
		if [ $temp -lt 32 -o $temp -gt 212 ]
		then
			echo "Invalid! Fahrenheit [32-212]"
		else
			result=$(toCelsius $temp)
			echo $result
		fi
	;;
	*)
		echo "Invalid Choice!!"
	;;
esac
