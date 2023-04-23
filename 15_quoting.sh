#!/bin/bash

# Author: Ashish Porwal
# Date Created: 21/April/2023
# Date Modified: 21/April/2023

#  Description
#   Quoting is about removing the meaning of special character and treat those character as a literal by shell.
#   There are 3 ways to remove special character meaning in shell

#   1. Backslash(\) - this removes special meaning from the next character.
#   2. Single Quotes('') - this removes special meaning from all character inside it.
#   3. Double Quotes("") - this removes special meaning from all except dollar signs($) and backticks(`)
#                           as we know $ this sign is to do all kinds of expansion.
#                           and ` back tick is just an another way of doing command subsitution.

# Example - 
#       Suppose we want to run:
#       ashporwal@myubuntu:~$ echo ashish & aadi
#       So, in above as we know ampersand (&) - is used to run processes in background, so this & has special meaning, so it won't run as expected.

#       So, to avoid special character we are going to quote it

#       ashporwal@myubuntu:~$ echo ashish \& aadi
#       Now above will print the whole line

#let's take one more example - I want to save some windows file path in my environment variable.
# so we do like this -
#   ashporwal@myubuntu:~$ filepath=d:\new_file\scripts
#   ashporwal@myubuntu:~$ 
#   ashporwal@myubuntu:~$ echo $filepath
#   d:new_filescripts
#   ashporwal@myubuntu:~$ 

# then we noticed it didn't print the file path as expected.
# so we can wrap the whole file path in single quote -
#   ashporwal@myubuntu:~$ filepath='d:\new_file\scripts'
#   ashporwal@myubuntu:~$ echo $filepath
#   d:\new_file\scripts
#   ashporwal@myubuntu:~$ 


# now if there is some special character in your file path, then you can use double quote and before that special character we can use \ backslash
# like this - ashporwal@myubuntu:~$ "filepath=d:\new_file\\$USERS\scripts"