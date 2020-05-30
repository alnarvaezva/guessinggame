#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
local number_files
local n
number_files=$( ls -la | egrep "^-"  | wc -l )
echo "¿How many files there are in the courrent directory?"
read n

while [[ $n -ne $number_files ]]

do
if [[ $n -eq $number_files  ]]
then
	echo "You has entered the correct number =$n"

else
	echo "Incorrect, please print another number"
	read n
fi

done
}

