 
README.md: .FORCE
	touch README.md
	basename "$$PWD" > README.md
	date >> README.md
	echo "Number of lines:" >> README.md
	cat *.sh|wc -l  >> README.md
	echo "[page project](https://alnarvaezva.github.io/guessinggame/)" >> README.md	
.PHONY: .FORCE
.FORCE: 

