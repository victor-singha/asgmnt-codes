#! /bin/bash
head_count=0
tail_count=0
while [ $head_count -ne 11 -a $tail_count -ne 11 ]
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 0 ]
	then
		head_count=$((head_count+1))
	else
		tail_count=$((tail_count+1))
	fi
done
echo "HEADS: " $head_count
echo "TAILS: " $tail_count
if [ $head_count -gt $tail_count ]
then
	echo "HEAD WINS !!!!!!!"
else
	echo "TAIL WINS !!!!!!!"
fi
