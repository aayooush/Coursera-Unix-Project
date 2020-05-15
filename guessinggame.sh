#!/usr/bin/env bash

function guess {
	echo "Enter Guess: "
	read entry

	answer=$(ls -l | grep "^-" | wc -l)

	while [[ $entry -ne $answer ]]
	do
		if [[ $entry -lt $answer ]]
		then
			echo "Too Low. Guess Again: "
			read entry
		elif [[ $entry -gt $answer ]]
		then
			echo "Too High. Guess Again:"
			read entry
		fi
	done
	echo "Congratulations!!"
}

guess
