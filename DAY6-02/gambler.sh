#! /bin/bash
money=100
limit=200
wins=0
bets=0
while [ $money -ne 0 -a $money -ne $limit ]
do
	bets=$((bets+1))
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 0 ]
	then
		money=$((money+1))
		wins=$((wins+1))
		echo "WIN"
	else
		money=$((money-1))
		echo "LOSS"
	fi
	echo "money left: " $money
	echo "wins: " $wins
	echo "bets made: " $bets
	echo "------------------------"
done
echo "TOTAL MONEY LEFT: " $money
echo "TOTAL WINS COUNT: " $wins
echo "TOTAL BETS MADE: " $bets
