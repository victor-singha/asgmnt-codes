#! /bin/bash
function primefactor(){
	num=$1
	flag=1
	for ((i=2;i<=num;i++))
	do

		if [ $((num%i)) -eq 0 ]
		then
			for((j=2;j<i;j++))
			do
				if [ $((i%j)) -eq 0 ]
				then
					flag=0
					break;
				else
					flag=1
				fi
			done
			if [ $flag -eq 1 ]
			then
				echo $i
			fi
		fi
	done
}
read -p "Enter a number: " num
result=$(primefactor $num)
count=0
declare -a factors
for item in $result
do
	factors[$count]=$item
	count=$((count+1))
done
echo "Prime Factors of" $num "is" ${factors[@]}
