#!/bin/bash

# Author: Ashish Porwal
# Date Created: 22/April/2023
# Date Modified: 22/April/2023

#  Description
# In Bash there are two types of commands - Simple commands and Compound commands

# Simple command - 
#      for example this is a simple command - echo 1 2 3
#      so why is it a simple command? 
#      because in simple command first word is interpreted as command name, and the remaining are inputs(argument) to that.
#      So in above example - echo(this is command Name) 1 2 3 (they are argument)

#       all simple command is terminated by the control operator -
#       control operator
                # Newline
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
# so in echo 1 2 3 it is terminated by newline charcter

# Compound Commands - 
#       Compound command is used to create - if statements or loops.
#       So, each compound command starts with a reserved word and is terminated by a corresponding reserved word.
#       So shell use to identify where compound commands start and ends by Reserve word.