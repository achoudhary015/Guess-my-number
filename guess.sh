#!/bin/bash 

#guess my no with bash shell

counter=1
Sytem_numer=$RANDOM

for (( ;; ))
do 
	read -p "This is your chance no $counter enter the guss number: " user_number 

	if [ $user_number -eq $Sytem_numer ] 
	then 
		echo "the number is correct"
		echo "You guessed it on try no $counter"
		break

	else 
		echo "the number gussed is incorrect"
		if [ $user_number -ge $Sytem_numer ]
		then 
			echo "please enter less than $user_number"
		else
			echo "please enter greater than $user_number"
		fi
	fi 
	counter=$((counter+1))
done



