#!/bin/bash

#do-while loop - 
	#The while statement continue executes a block of statements while a particular statement is true or met.

#syntax - 

#while [condition]
#do
	#command1
	#command2
#done


count=0
num=10

while [ $count -lt $num ]
do
	echo the loop will run for - $((num--))
done


#Here conditional statements are like -

#	-eq	Returns true if two numbers are equivalent
#	-lt	Returns true if a number is less than another number
#	-gt	Returns true if a number is greater than another number
#	==	Returns true if two strings are equivalent
#	!=	Returns true if two strings are not equivalent
#	!	Returns true if the expression is false
#	-d	Check the existence of a directory
#	-e	Check the existence of a file
#	-r	Check the existence of a file and read permission
#	-w	Check the existence of a file and write permission
#	-x	Check the existence of a file and execute permission
