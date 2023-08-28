#!/bin/bash

# Author: Ashish Porwal
# Date Created: 01/April/2023
# Date Modified: 01/April/2023

# Description
# Suppose if you want to write numbers from 1 to 10 and want to print them then you are going to do like this -
#	echo {1,2,3,4,5,6,7,8,9,10}
# but the easiest way to do is we could replace all mid numbers with dot dot and just keep starting number and end number.
# like this - echo {1..10}

# Usage
#

echo {1,2,3,4,5,6,7,8,9,10}
echo {1..10}

#printing numbers from 1 to 50 with the steps of 5.
echo {1..50..5}

echo {a..z}

echo month{01..12}
#if we use  month{01..12} this with mkdir command then it is going to make those directories.
