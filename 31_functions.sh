#!/bin/bash

# Author: Ashish Porwal
# Date Created: 26/August/2023
# Date Modified: 26/August/2023

# We can use functions in Shell script to avoid repeating the same task.

# ------------------------------------------------------------------
# I can define functions in two ways -
# ------------------------------------------------------------------
function_name() {
    commands
}
# ------------------------------------------------------------------
# OR
# ------------------------------------------------------------------
function function_name {
    commands
}

# ------------------------------------------------------------------
# And this is how we can call a function: 
# ------------------------------------------------------------------
function_name
# ------------------------------------------------------------------
# Passing Arguments in Function
# In shell script we take argument in $1, $2 and so on
# ------------------------------------------------------------------

my_function() {
    echo "My first name is: $1"
    echo "My Last name is: $2"
}

my_function "Ashish" "Porwal"

# ------------------------------------------------------------------
# Returning values:
#   Use the return statement to return a status (similar to exit status of commands, but this can't return String so better use echo as return statement).
#   Echo value and capture it in the caller.
#   The # symbol, when used inside ${#variable}, is a special parameter expansion in shell scripting that gives the length of the variable's value.
# ------------------------------------------------------------------
get_length() {
    local input="$1"
    echo ${#input}
}

result=$(get_length "Ashish")
echo "Length of my name is: $result"

# ------------------------------------------------------------------
#Local variables:
#    You can use the local keyword inside a function to declare a variable as local to that function:
# ------------------------------------------------------------------
my_function() {
    local my_variable="This is local"
    echo "$my_variable"
}