all: README.md WRITE

README.md:
	touch README.md

WRITE:
	basename "$$PWD" > README.md
	date >> README.md
	echo "Number of lines:" >> README.md
	cat *.sh|wc -l  >> README.md	
 
