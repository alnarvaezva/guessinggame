#!/usr/bin/env bash
# File: guessinggame.sh

function at_least {
if [[ $n -eq $number_files  ]]
then
        echo "Well done, You has entered the correct number = $n"
else
	if [[ $n -lt $number_files ]]
        then	
		echo "Incorrect, please print another higer number"
        	read n
		at_least
	else
		echo "Incorrect, please print another lower number"
                read n
                at_least
	fi
fi
}

number_files=$( ls -la | egrep "^-"  | wc -l )
echo "¿How many files there are in the courrent directory?"
read n
at_least
while [[ $n -ne $number_files ]]
do
at_least 
done
