README_FILE_NAME = "README.md"

PROJECT_NAME = "coursera-bash-programming"

DATE_TIME_OF_PREPARATIOn = `date`

NO_OF_LINES = `wc -l README.txt`


all:
	echo "# "$(value PROJECT_NAME)              > $(README_FILE_NAME)
	echo "* "$(value DATE_TIME_OF_PREPARATIOn) >> $(README_FILE_NAME)
	echo "* "$(value NO_OF_LINES)              >> $(README_FILE_NAME)
