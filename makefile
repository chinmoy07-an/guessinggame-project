all:	README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Unix Workbench Course - Guessing Game Project " > README.md
	date >> README.md
	echo " The Guessing game Project Script contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
