readme.md:
	touch readme.md
	echo "The name of the project is \*\* guessinggame \*\*" >>readme.md
	echo "The time and date this file was run is:" >>readme.md
	echo `date` >> readme.md
	echo "This project has: " >>readme.md
	wc -l start.sh | egrep -o "[0-9]+" >> readme.md
	echo "lines of code" >> readme.md

