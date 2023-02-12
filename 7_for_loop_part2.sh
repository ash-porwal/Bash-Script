#!/bin/bash

#creating 5 files and deleting them
for i in {1..5}
do
	#we can make files using loop as well
	touch $i.py
	rm -rf $i.py
done


#Specify days in loop -

num=1
for day in Mon Tue Wed Thru
do
	echo Weekday $((num++)) : $day #if we want to increase the value of assigned vairable then it should be in double parenthesis.
done


#Note: If you want to use command and that command is assigning to a variable then just make sure that the command is enclsoed with tick - `
for username in `awk -F: '{print $1}' /etc/passwd`
do
	echo "Username - $username"
done
