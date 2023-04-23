#!/bin/bash

# Author: Ashish Porwal
# Date Created: 21/April/2023
# Date Modified: 21/April/2023

#  Description
#   So, tokens are a squence of characters that is considered as a single unit by shell.
#   and in 14_bash_process_overview I've already discussed about the difference between Operators and Word.

#   Now, there are two types of Operators
#       1. Control operator - this opeartor is used to control how a command line is processed 
#           and these are the full list of these operators -
                # newline
                # |
                # ||
                # &
                # &&
                # ;
                # ;;
                # ;&
                # ;;&
                # (                
                # )

#       2. Redirection operators - these tells the shell to do certain redirection of data stream that it connected to a command.
#           And this is the full list of redirection operators -
                # <
                # >
                # <<
                # >>
                # <&
                # >|
                # <<-
                # <>
                # >&

                
#          *****These are Metacharacters******
#                       |
#                       &
#                       ;
#                       ()
#                       <>
#                       space, tab and newline
#               so for example in this command - echo $name > output.txt
#               In this we have 3spaces+1 greater than sign so total = 4 meta characters.
#               And Shell will treat - echo,$name,output.txt as a word
