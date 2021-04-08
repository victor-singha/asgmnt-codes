#! /bin/bash
declare -A results
maxkey=0
minkey=0
maxvalue=0
minvalue=10
results=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)
while [ ${results[1]} -ne 10 -a ${results[2]} -ne 10 -a ${results[3]} -ne 10 -a ${results[4]} -ne 10 -a ${results[5]} -ne 10 -a ${results[6]} -ne 10 ]
do
	val=$((RANDOM%6+1))
	results[$val]=$((${results[$val]}+1))
done
echo "Key: "${!results[@]}
echo "Val: "${results[@]}
for ((i=1;i<=6;i++))
do
	if [ $((${results[$i]})) -gt $maxvalue ]
	then
		maxvalue=$((${results[$i]}))
		maxkey=$i
	fi
	if [ $((${results[$i]})) -lt $minvalue ]
	then
		minvalue=$((${results[$i]}))
		minkey=$i
	fi
done
echo "KEY Max: "$maxkey "| VALUE Max: "$maxvalue
echo "KEY Max: "$minkey "| VALUE Min: "$minvalue
