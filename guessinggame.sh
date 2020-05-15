#!/usr/bin/env bash

function checkinput {
	read entry
	while [[ ! $entry =~ ^[0-9]+$ ]];
	do
		echo "Invalid Number, Enter Value: "
		read entry
	done
}

function guess {
	echo "Enter Guess: "
	checkinput
	answer=$(ls -A | wc -l)
	while [[ $entry -ne $answer ]]
	do
		if [[ $entry -lt $answer ]]
		then
			echo "Too Low. Guess Again: "
			checkinput
		elif [[ $entry -gt $answer ]]
		then
			echo "Too High. Guess Again:"
			checkinput
		fi
	done
	echo "Congratulations!!"
}
guess
