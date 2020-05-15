README.md:
	touch README.md
	echo "Title: Guess the Count" >> README.md
	echo "\nThe makefile is run at " >> README.md
	date >> README.md
	echo "\nLines of Code in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
