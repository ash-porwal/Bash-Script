#!/bin/bash

# Author: Ashish Porwal
# Date Created: 30/April/2023
# Date Modified: 30/April/2023

# Description
#   Test commands can be used in bash to compare different pieces of information.
#   If a test is evaluated to be true the test will return an exit status of 0.
#   And for False it return status of 1.

#   So test comamnds are written inside sqaure brackets - [] and make sure we have gap inside them like this
        # ashporwal@myubuntu:~/ashish/lab/programmes/Bash-Script$ [ 2 -eq 2 ] ; echo $?
        # 0
        # ashporwal@myubuntu:~/ashish/lab/programmes/Bash-Script$ 
# On above we are comparing if both 2 are equal or not and in bash -eq is for equal, just like in python it is  ==
#  then if we want to check output then we can echo ?(question mark) and we are using semicolon(;) because it should run the second command as well if doesn't matter if first command got failed.

# similary we have many more test Operators -
# -ne -> if two numbers are not equal
# -eq -> if two numbers are equal
# = -> if two strings are equal
# != -> if two strings are not equal
# -z -> if two strings are empty

# and there are many more we can google