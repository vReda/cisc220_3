#!/bin/bash -x

#Vanessa Reda 10194381

echo "Please enter your password to be checked:"
read -s password 
checker=0
if [[ ${#password} -ge 8 ]]
 then
	((checker++)) 
fi
echo $checker
echo "${password}" | grep "[0-9]" > /dev/null
if [[ $? -eq 0 ]] 
 then
	((checker++))
fi
if [[ $password == "*[@#$%&*+-=]*" ]]
 then
	((checker++))
fi
if [[ $checker == 0 || $checker == 1 ]]
 then
	echo "Weak password!"
elif [[ $checker == 2 ]]
 then
	echo "Moderate password."
elif [[ $checker == 3 ]]
 then
	echo "Strong password!"
fi

