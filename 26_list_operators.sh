#!/bin/bash

# Author: Ashish Porwal
# Date Created: 30/April/2023
# Date Modified: 30/April/2023

# Description
# So, we need to know what is List of comamnds?
#   When we put one or more commands on a givne line then it is list of commands, just like we use ->
    # List operators:
    #  & - Sends process in background, and those processess run independently -> runs commands asynchronously 
    #  && - it is AND operator - like -> mkdir test && cd test -> it means first create test dir then cd into it. -> it runs only when first command is successful
    #   ; -  Runs process but second process only execute if first one is compelted - example - echo 123 ; echo 5 -> this runs commands sequentially. it will run second command even if first command got failed.
    #   || - this one is OR operator and runs only if first command got failed.

