#!/bin/bash

#in this we are going to take input, so when we run the script, it will wait for us to take some input

#to take input in bash we have - read command followed by variable name - read <variable_name> so this variable will store the input value.

echo Enter your name:
read name
echo Your name is $name
