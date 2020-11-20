all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "**Make Date:**" >> README.md
	date >> README.md
	echo -e "\n\n**Number of lines in guessinggame.sh is:** " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
