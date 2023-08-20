#!/bin/bash

# Author: Ashish Porwal
# Date Created: 01/April/2023
# Date Modified: 20/Aug/2023

# Description
# First let's look at the basics of Arithmetic Operations, so there are different ways performing the Arithmetic Operation in shell
# 1. One is using the expr command, like run -> expr 6 + 3, and it will give you 9 as an output, just keep in mind it should have gap between operators and values.
#       Just keep in mind when using * in command line, we must escape it with \, as it is reserved wildcard. so, I can run expr 2 \* 2.

# 2. Now second way to perform Arithmetic operation in bash is using double parentheses (())
#   like this -
#       echo $((2+2))

# we can also increment or decrement some variable, like this -
#   number=0
# then I can increase it by some value like this -
#   echo $((++number)) or $(expr $number + 1), please check from line 63 to 79.

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

#first way we can do like this, using double parentheses -
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


#So, If you want to work with decimal then there is commad - <bc> - stands for basic calulator.
#just type bc in terminal and it will open up calculator, there we can perform calculation with decimal numbers, and to quit it write - quit.
#so, if we want to get Decimal numbers in our script then we need to pipe it. and bc command does take scale vlaue, so if you  want decimal number should go up to 2 then we need to set scale value as 2. here is the syntax - 

echo "scale=2; 2.5+2" | bc

echo 10 / 3 | bc -l # only bc would still give us integer value.

# Example of incremental or decremental
#!/bin/bash
num=0
for i in 'a' 'b' 'c'
do
num=$(expr $num + 1)
echo $num
done

# or increment with (())
#!/bin/bash
num=0
for i in 'a' 'b' 'c'
do
num=$((++num)) #in case of num++, then it just works like C, the value is first returned then increment
echo $num
done