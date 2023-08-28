#!/bin/bash

# Author: Ashish Porwal
# Date Created: 26/August/2023
# Date Modified: 26/August/2023


calculate_age(){
    current_year=$(date +%Y)
    echo "Current year is: $current_year"
    current_age=$(($current_year - $1))

    echo "You are $current_age years old."
}

echo "Please enter your birth year:"
read year_of_birth
calculate_age $year_of_birth