#!/bin/bash

#if-then conditional statements

echo Enter some number
read count
if [ $count -eq 100 ] #here we asked if count is equal to 100
then
	echo Count is 100
else
	echo  Count is not 100
fi #we put fi it tells the script that here if-else condition is done


#in this we will check if some file exists in some location or not and we will use -e flag to check if that file exist or not
#also we while writing if-else condition it is indent insensitive, and just make sure this conditional statement ends with "fi"
if [ -e /home/rk/Ashish/Programs_notes/Programms/Bash_scripts/5_if_then.sh ]
then
echo "Yes File exist there"
else
echo "NO file doesn't exist"
fi

