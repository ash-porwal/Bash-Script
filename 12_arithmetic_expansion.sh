#!/bin/bash

# Author: Ashish Porwal
# Date Created: 01/April/2023
# Date Modified: 01/April/2023

# Description
# Know the different shell expansion -
#	${parameter} - we use {} with parameters
#	$(command) - use () with any command
#	$((expression)) - usr (()) in arithmetic expansion
#		so these are arithmetic expressions: 
#		+(addition), 
#		-(substraction), 
#		/(division), 
#		*(multiplication), 
#		**(exponenet)
#		% (gives the remainder)
#


# Usage
# to calculate things

#suppose you want to calculate two numbers

#first way we can do like this -
echo $((1+2))

#or we can do like this assigning those vlaues to varibales-
x=1
y=2
echo $((x+y))
echo $((y**3))

#In Bash Arithmetic can't give us decimal numbers -
echo $((5/2))

#this will throw an error
echo $((2.5 + 2))


#So, If you want to work with decimal then there is commad - <bc>
#just type bc in terminal and it will open up calculator, tehre we can perform calculation with decimal numbers, and to quit it write - quit.
#so, if we want to get Decimal numbers in our script then we need to pipe it. and bc command does take scale vlaue, so if you  want decimal number should go up to 2 then we need to set scale value as 2. here is the syntax - 

echo "scale=2; 2.5+2" | bc
