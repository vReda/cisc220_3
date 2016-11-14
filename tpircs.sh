#!/bin/bash

#Vanessa Reda 10194381

echo "Enter a list of words:"
read -a textArray
#echo ${textArray[2]}
for ((i=0 ; i<${#textArray[@]} ; i++ )); do
	echo ${textArray[i]} | rev
done
