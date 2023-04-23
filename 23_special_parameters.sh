#!/bin/bash

# Author: Ashish Porwal
# Date Created: 23/April/2023
# Date Modified: 23/April/2023

# Description
#   Special parameters are - parameters that bash gives a speacial meaning, and we cannot change the value of special parameter, and their value is calculated
#   for us based on our current script.
#   so this one is special parameter - $# - this counts the number of postional parameters.

echo “My Name is $1”
echo “My home directory is $2”
echo “My favourite colour is $3”
echo $#

#now if we run this script like this - /.23_special_parameters.sh Ashish $HOME Orange
#then out will be like this -
# My Name is Ashish
# My home directory is /home/ashporwal
# My favourite colour is Orange
# 3 = this is the total number of postional parameters we passed

# and this one is another special parameter - $0 - this gives the current shell name, but if it is using inside the script then it is going to return the name of the script
echo $0
#potential usecase of this is we can use in error message

# $@ - we use this when we are unsure about how many postional parameters are there going to be.
# Now, unlike the original way that we were dealing with positional parameters where we had to list out
# each positional parameter one by one in order to access its value $@ allows us to access
# all the positional parameters at once that a pass to our script and it separates each parameter with
# a space.
# When you write that the value becomes $1, $2, $3 space all the
# way up to $N, where N is just a representation of the total number of command line arguments

# and if we put $@ in double quote like this - "$@" then we are going to get postional arguments like this - "$1" "$2" "$3".. "$N"
touch $@

# $* - In its unquoted form is exactly the same unquoted $@, 
#while quoted $* will separate all postional arguments with first value of IFS (which is space)
