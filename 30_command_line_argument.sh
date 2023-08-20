#!/bin/bash

# Author: Ashish Porwal
# Date Created: 20/Aug/2023
# Date Modified: 20/Aug/2023

# Description
#   Command Line Arguments
#   so, when we run something in command line like i ran -> mkdir some_dir, 
#   then in this mkdir will be saved at environment variable $0 and $1 will be some_dir, and so on, these are command line arguments.
#   so we can pick these command line values from the command into script.

# Suppose I am running below command
echo Hi, I am $1
# If, we run this script we can see I've not defined 1 as a varible, 
# so to run this script I will need to run as ./<script_name> <value> then my case it would be ./30_command_line_argument.sh Ashish