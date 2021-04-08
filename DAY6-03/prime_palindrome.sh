#! /bin/bash
function palindrome(){
	num=$1
	remainder=0
	sum=0
	temp=$num
	while [ $num -gt 0 ]
	do
		remainder=$((num%10))
		sum=$((sum*10+remainder))
		num=$((num/10))
	done
	if [ $temp -eq $sum ]
	then
		echo 1
	else
		echo 0
	fi
}
function prime(){
	num=$1
	flag=1
	for ((i=2;i<num;i++))
	do
        	if [ $((num%i)) -eq 0 ]
        	then
                	flag=0
                	break;
        	else
                	flag=1
        	fi
	done
	if [ $flag -eq 1 ]
	then
		echo 1
	else
		echo 0
	fi
}
read -p "Enter a number: " num
isPrime=$(prime $num)
isPal=$(palindrome $num)
if [ $isPrime -eq 1 -a $isPal -eq 1 ]
then
	echo $num "is both Prime and Palindrome"
elif [ $isPrime -eq 1 -a $isPal -eq 0 ]
then
	echo $num "is only Prime"
elif [ $isPrime -eq 0 -a $isPal -eq 1 ]
then
	echo $num "is only Palindrome"
else
	echo $num "is Neither Prime Nor Palindrome"
fi
