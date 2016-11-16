#!/bin/bash

#Vanessa Reda 10194381


digit=0
sum=0
for (( h=1000; h<=10000; h++ )); 
do
i=$h
#echo -n "Enter number:"
#read i
#	echo "check $i"
	while [ $i -gt 0 ] 
	do	
		digit=$(( $i % 10 ))
		i=$(( $i / 10 ))
		sum=$(( $sum + $digit ))
	done
	echo "Ouput 1 $sum"
	j=$sum
	while [ $j -gt 0 ]
	do 
		digit=$(( $j % 10 ))
		j=$(( $j / 10 ))
		sum2=$(( $sum2 + $digit ))
	done
	echo "output 2 $sum2"
	if [[ $sum2 == 7 ]]; 
	then
		echo $sum2
	fi			 
done
