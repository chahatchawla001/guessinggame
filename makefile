all: draft_readme.md


draft_readme.md: guessinggame.sh
	touch README.md
	echo "Project Title: Guessing Game by Chahat Chawla" >> README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md
