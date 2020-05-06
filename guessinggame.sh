#!/usr/bin/env bash

function guessing {
	ans=$(ls -al| grep '^-' | wc -l)
	guess=-1

	while [[ ! $guess -eq $ans ]]
	do
		echo "how many files are there? Try making a guess"
		read guess

		if [[ ! $guess -eq $ans ]]
		then
			if [[ $guess -gt $ans ]] 
			then
				echo "your guess is too high"
			else
				echo "your guess is too low"
			fi
		fi
	done

	echo "you guessed it right, game completed successfully"
}


guessing
