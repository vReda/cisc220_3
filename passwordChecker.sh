#!/bin/bash

#Vanessa Reda 10194381

echo "Please enter your password to be checked:"
read -s $password 
checker=0
if [ ${#password} >= 8 ];
 then
	((checker++)) 
fi
echo $checker
echo "${password}" | grep -q '[0-9]'
if [ $? != 0 ]; 
 then
	((checker++))
fi
if [ $password == *[@#$%&*+-=]* ];
 then
	((checker++))
fi
if [ $checker == 0 || $checker == 1 ];
 then
	echo "Weak password!"
else if [ $checker == 2 ];
 then
	echo "Moderate password."
else if [ $checker == 3 ];
 then
	echo "Strong password!"
fi

