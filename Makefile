# Makefile
README.md: guessinggame.sh
	echo "# Unix Project Eduardo Herrera" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of lines in guessinggame.sh" >> README.md
	wc -l < guessinggame.sh >> README.md
