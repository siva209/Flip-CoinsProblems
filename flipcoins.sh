#!/bin/bash -x
headc=0
tailc=0
for ((i=0;i<20;i++))
do
var=$((RANDOM%2))
if [ $var -eq 1 ]
then 
	((headc++))
else
	((tailc++))
fi
done
echo "number of times head wins is $headc"
echo "number of times tail wins is $tailc"
