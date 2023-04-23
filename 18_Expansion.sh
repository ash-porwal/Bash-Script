#!/bin/bash

# Author: Ashish Porwal
# Date Created: 22/April/2023
# Date Modified: 22/April/2023

#  Description
#    As we know once the shell ends tokenization then it will start word expansion.

#    So there are 4 stages of Shell Expansions:
#    Stage1: 
        # Brace Expansion
#    Stage2: 
        # Parameter Expansion, 
        # Arithmetic Expansion, 
        # Command Substitution, 
        # Tilde Expansion
#    Stage3:
        # Word Splitting
#    Stage4:
        # File name expansion aka  Globbing

# so these expansion happens in series, like first bash will do stage1, then stage2 and so on.

# For example - 
# x = 10 - now this is a Paramter, so fall in Stage2
# now if we perform - echo {1..$x} then bash will not get it what is the value of $x because as it will perform Brace exapansion first.
# so if it can't find the value of some parameter then it will replace it with empty space.
