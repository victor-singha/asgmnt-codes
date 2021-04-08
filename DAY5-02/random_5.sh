#! /bin/bash
num1=$(( RANDOM ))
num2=$(( RANDOM ))
num3=$(( RANDOM ))
num4=$(( RANDOM ))
num5=$(( RANDOM ))
echo $num1 $num2 $num3 $num4 $num5
if [ $num1 -gt $num2 -a $num1 -gt $num3 -a $num1 -gt $num4 -a $num1 -gt $num5 ]
then
	echo $num1 "is max number"
elif [ $num2 -gt $num1 -a $num2 -gt $num3 -a $num2 -gt $num4 -a $num2 -gt $num5 ]
then
	echo $num2 "is max number"
elif [ $num3 -gt $num1 -a $num3 -gt $num2 -a $num3 -gt $num4 -a $num3 -gt $num5 ]
then
	echo $num3 "is max number"
elif [ $num4 -gt $num1 -a $num4 -gt $num3 -a $num4 -gt $num3 -a $num4 -gt $num5 ]
then
	echo $num4 "is max number"
else
	echo $num5 "is max number"
fi
if [ $num1 -lt $num2 -a $num1 -lt $num3 -a $num1 -lt $num4 -a $num1 -lt $num5 ]
then
	echo $num1 "is min number"
elif [ $num2 -lt $num1 -a $num2 -lt $num3 -a $num2 -lt $num4 -a $num2 -lt $num5 ]
then
	echo $num2 "is min number"
elif [ $num3 -lt $num1 -a $num3 -lt $num2 -a $num3 -lt $num4 -a $num3 -lt $num5 ]
then
	echo $num3 "is min number"
elif [ $num4 -lt $num1 -a $num4 -lt $num2 -a $num4 -lt $num3 -a $num4 -lt $num5 ]
then
	echo $num4 "is min number"
else
	echo $num5 "is min number"
fi
