#!/bin/bash -x
headc=0
tailc=0
while [ $headc -lt 21 -a $tailc -lt 21 ]
do
var=$((RANDOM%2))
	if [ $var -eq 1 ]
	then 
		((headc++))
	else
		((tailc++))
	fi
done
	if [ $headc -eq 21 ]
	then
		diff=$(($headc - $tailc))
		echo "head wins by $diff"
	elif [ $tailc -eq 21 ]
	then
		diff=$(($tailc-$headc))
		echo "Tail wins by $diff"
	else
		echo "no one wins"
		while [ $diff -lt 3 -a $diff -gt -3 ]
		do
			c=$((RANDOM%2))
			if [ $c -eq 1 ]
			then (($headc++))
			else (($tailc++))
			fi
			diff=$(($headc-$tailc))
		done

	fi
echo "number of times head wins is $headc"
echo "number of times tail wins is $tailc"
