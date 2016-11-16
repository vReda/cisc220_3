#!/bin/bash

#Vanessa Reda 10194381

listArray=( $(find . -type f -executable -print) )  
for (( i=0 ; i<=$(#listArray[@]) ; i++ )); do 
	sed -i '/bash/ a\ #Developed in CISC220 '
done
