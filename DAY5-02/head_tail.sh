#! /bin/bash
val=$(( RANDOM%2 ))
if [ $val -eq 0 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi
