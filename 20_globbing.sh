#!/bin/bash

# Author: Ashish Porwal
# Date Created: 22/April/2023
# Date Modified: 22/April/2023

# Description
#   So what exactly is globbing?
#       It is 4th and final stage of expansion processing
#       From 1969 to 1975, the Globe program was a program that would replace text containing special patent
#       symbols with a list of file names that matched those patterns.
#       This allowed Shell users to express what files they want a command to operate on without having to type
#       out each file name manually.
#       We must know that Globbing only performed on words.

#   When shell begins to perform Globbing it scans each word for certain special characters, and these
#   special characters are the asterisk, the questionmark and the left square bracket.
        #   *  - everything
        #   ?  - one character
        #   [] - [matches only those which are inside them]
#   If the shell finds one of these characters unquoted inside a word, then it will perform globinng on that word at the global stage.