#!/bin/bash

# Author: Ashish Porwal
# Date Created: 30/April/2023
# Date Modified: 30/April/2023

# Description
#   if statements are kind of compound commands - means shell identify compound command with the reserve start and end words.
#   IF statement starts with - if and ends with - fi.
#   if statement checks the exit status of the command, if exit status is 1 which means fail then command inside if statement won't run

# Synax of if ->
    # if test1 ; then
    # Commands... # only run if test1 passes
    # elif test2 ; then
    # Commands... # only run if test1 fails and test2 passes
    # elif testN ; then
    # Commands... # only run if all previous tests fail, but testN passes
    # else
    # Commands... # only run if all tests fail
    # fi


if [ 2 -eq 1 ]; then
    echo test passed
else
    echo test failed
fi



# *****
#here we created a script where we need to check if content of file 1 is same with file 2 and file 3 then we will delete those file 2 and 3.
#!/bin/bash
a=$(cat file1.txt) # "a" equals contents of file1.txt
b=$(cat file2.txt) # "b" equals contents of file2.txt
c=$(cat file3.txt) # "c" equals contents of file3.txt
if [ "$a" = "$b" ] || [ "$a" = "$c" ]; then
    rm file2.txt file3.txt
else
    echo "File1.txt did not match either file"
fi
