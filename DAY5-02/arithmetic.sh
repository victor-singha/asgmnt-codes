#! /bin/bash
read -p "Enter value of 'a': " a
read -p "Enter value of 'b': " b
read -p "Enter value of 'c': " c
val1=$((a+(b*c)))
val2=$(((a%b)+c))
val3=$((c+(a/b)))
val4=$(((a*b)+c))
echo "a + b * c =" $val1
echo "a % b + c =" $val2
echo "c + a / b =" $val3
echo "a * b + c =" $val4
if [ $val1 -gt $val2 -a $val1 -gt $val3 -a $val1 -gt $val4 ]
then
	echo $val1 "is max"
elif [ $val2 -gt $val1 -a $val2 -gt $val3 -a $val2 -gt $val4 ]
then
	echo $val2 "is max"
elif [ $val3 -gt $val1 -a $val3 -gt $val2 -a $val3 -gt $val4 ]
then
	echo $val3 "is max"
else
	echo $val4 "is max"
fi
if [ $val1 -lt $val2 -a $val1 -lt $val3 -a $val1 -lt $val4 ]
then
	echo $val1 "is min"
elif [ $val2 -lt $val1 -a $val2 -lt $val3 -a $val2 -lt $val4 ]
then
	echo $val2 "is min"
elif [ $val3 -lt $val1 -a $val3 -lt $val2 -a $val3 -lt $val4 ]
then
	echo $val3 "is min"
else
	echo $val4 "is min"
fi
