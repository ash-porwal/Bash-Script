#!/bin/bash

: <<'Description'
Author: Ashish Porwal
Date Created: 20/August/2023
Date Modified: 20/August/2023


if-then conditional statements, just like in English we say If this happens then we will do this, it is similar.
so, in bash it is like -

------------------------------------------------
if [ some condition ]
then
    #this part is execute if condition is matched
elif [ some other condition ]
then
    #this part is execute if condition is matched
else
	  echo 'No condition is matched.'
fi
------------------------------------------------
matching condition is inside [], and there should be one space between bracket and your condition and between operators.
like here - [ if 'a' = 'b' ]
and it if statement ends with fi
Keep in mind 
In case of Strings comparison we use these operators: 
	= or == (both are valid), 
	!= Checks if two strings are not equal.
	-z Checks if the string is null (i.e., has zero length).
	-n Checks if the string is not null (has a non-zero length).

However, in Bash, when comparing numbers, you'd use a different set of operators like:
	-eq: Stands for "equal to
	-ne: Stands for "not equal to"
	-lt: Stands for "less than".
	-le: Stands for "less than or equal to"
	-gt: Stands for "greater than". 
	-ge: Stands for "greater than or equal to".
Description
# ---------------------------------------------------------------------------

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

: <<'END_COMMENT'
In Bash scripting, [[ ... ]] (double square brackets) represent an enhanced version of the [ ... ] (single square brackets).
It helps us using wild cards using in comparison like this - 
	if [[ 'abcd' = *bc* ]]
	then
		echo "yes it contains"
	fi
END_COMMENT

# To check two conditions are true
: <<'END_COMMENT'
We can use 
	&& means And
	|| means OR

In case if we are using single squaure brackets
[ condition1 ] && [ condition2 ]
[ condition1 ] || [ condition2 ]

In case if we are using enhanced squaure brackets
[[ condition1  ||  condition2 ]]
[[ condition1  &&  condition2 ]]

if [[ $num -gt 5 && $string == "hello" ]]; then
    # Code here
fi
END_COMMENT

# There are File level operators as well
: <<'END_COMMENT'

-e: Checks if the file exists.

----------------------------------------------------------------
Suppsoe I want to check fi file.txt exists in my path or not
----------------------------------------------------------------
filename="/path/to/some/file.txt"
if [[ -e $filename ]]; then
    echo "filename exists."
fi


-f: Checks if the file is a regular file (not a directory or a special type of file).

-d: Checks if the given entity is a directory.

-s: Checks if the file exists and is not empty.

-r: Checks if the file exists and is readable.

-w: Checks if the file exists and is writable.

-x: Checks if the file exists and is executable.

-l: Checks if the entity is a symbolic link.

-p: Checks if the entity is a named pipe (also known as a FIFO).

-b: Checks if the entity is a block special file (like a physical hard drive).

-c: Checks if the entity is a character special file (like a terminal or sound device).

-g: Checks if the set-group-ID is set on a file or directory.

-u: Checks if the set-user-ID is set on a file.

-k: Checks if the sticky bit is set.

-t FD: Checks if the file descriptor FD is opened on a terminal. Commonly used to test if standard input/output/error is being redirected:

file1 -nt file2: Checks if file1 is newer (based on modification date) than file2.

file1 -ot file2: Checks if file1 is older than file2.

file1 -ef file2: Checks if file1 and file2 refer to the same inode (i.e., they are hard links to the same file).