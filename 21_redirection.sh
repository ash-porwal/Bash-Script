#!/bin/bash

# Author: Ashish Porwal
# Date Created: 22/April/2023
# Date Modified: 22/April/2023

# Description
#   So, first we need to understand there are 3 standard things -
        # 1. stdinput
        # 2. stdoutput
        # 3. stderror - so if you want to redirect any error in a file then we can do with this symbol: 2>
    # example: here I am redirecting error in file
    # ls -ltr 2> err.txt (I am assuming that I am performing ls -ltr as a normal user where we don't have permission to list unless we are root user).

# > - to redirect the result and overwrites the file
# >> -  to redirect the result but won't overwrite the file
# &> - To redirect the standard out and standard errror in a file
# 2> - to redirect the standard error in a file.