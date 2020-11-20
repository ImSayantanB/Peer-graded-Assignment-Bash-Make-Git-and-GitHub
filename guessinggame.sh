#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

echo "Guess how many files are there in the current directory?"
read num
count=$(ls | wc -l)

if [[ $num -eq $count ]]
then
	echo "Congratulations! That's the correct guess"
else
	while [[ $num -ne $count ]]
	do
		if [[ $num -gt $count ]]
		then
			echo "Too high"
			guessinggame
		elif [[ $num -lt $count ]]
		then
			echo "Too low"
			guessinggame
		fi
	done
fi

}

guessinggame
