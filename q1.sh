#!/bin/bash

#Vanessa Reda 10194381



for (( h=1000; h<=10000; h++ )) 
do
sum=0
digit=0
i=$h
	while [ $i -gt 0 ] 
	do	
		digit=$(( $i % 10 ))
		i=$(( $i / 10 ))
		sum=$(( $sum + $digit ))
	done
	digit=0
	sum2=0
	j=$sum
	while [ $j -gt 0 ]
	do 
		digit=$(( $j % 10 ))
		j=$(( $j / 10 ))
		sum2=$(( $sum2 + $digit ))
	done
	if [[ $sum2 == 7 ]]; 
	then
		echo $h
	fi			 
done
