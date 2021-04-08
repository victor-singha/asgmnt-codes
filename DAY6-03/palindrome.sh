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
		echo $temp "is Palindrome"
	else
		echo $temp "is Not Palindrome"
	fi
}
read -p "Enter 1st number: " num1
read -p "Enter 2nd number: " num2
res1=$(palindrome $num1)
res2=$(palindrome $num2)
echo $res1
echo $res2
