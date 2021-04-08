#! /bin/bash
for filename in `ls *.log.1`
do
	firstname=`echo $filename | awk -F. '{print $1}'`
	extension=`echo $filename | awk -F. '{print $2}'`
	currentdate=`date +%d-%m-%Y | awk -F- '{print $1$2$3}'`
	mv $filename $firstname"-"$currentdate"."$extension
	echo $filename " renamed to " $firstname"-"$currentdate"."$extension
done
