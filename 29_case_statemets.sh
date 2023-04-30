#!/bin/bash

# Author: Ashish Porwal
# Date Created: 30/April/2023
# Date Modified: 30/April/2023

# Description
#   Case statements are also compound commands and its reserve words are - case and esac

# *****SYNTAX******
    # case "$variable" in # don't forget the $ and the double quotes!
    # pattern1) #once you're done with a pattern that you want to match, you have to end this with some closing parentheses.
    # Commands ...
    # ;;
    # pattern2)
    # Commands ...
    # ;;
    # patternN)
    # Commands ...
    # ;;
    # *)
    # Commands ... # run these if no other pattern matches
    # ;;
    # esac


read -p "Enter number: " num
case "$num" in
    [0-9]) echo "It is single digit number";; #each clause(whatever inside double quotes) needs to be terminated to distinguish it from other clauses. The standard way to terminate the clasuse is putting double semicolon at the end.
    [0-9][0-9]) echo "It is double digit number"
    [0-9][0-9][0-9]) echo "It is triple digit number"
    *) "Number has more than 3 digits"
esac