#!/bin/bash

# Author: Ashish Porwal
# Date Created: 12/Feb/2023
# Date Modified: 20/August/2023

# Description

# What are Parameters in bash script ?
# A parameter is anything that stores a value.
# 	There are three types of parameters:
#	1. Varaibles - a paramter whose values you can change manaually, 
#       and variable name can contain only alpha numeric values or underscore, means if I want to make some varible then I would do first_var="Some value" but if i do first-val="Some value" then it is wrong.
#       and variables are case sensitive too that means This_var and this_var are not equal.
#       it is a good practice to make varibale names in lowercase, and use underscore to separate words.
#	2. Positional paramters
#	3. Special parameters


# Usage
# Creating varibale and saving time

#here we are going to define variables- just notice while defining variable we do not use space between variable_name and its value. if we use space and write like this - a = Ashish ,then this won't be a variable anymore

a=Ashish
b=Porwal
c=Ashish Porwal #notice here when we give a value to a variable, then make sure of there is no space, if there is space in value then put it under single quote - 'Ashish Porwal'.
d='Ashish Porwal'

#this is how we echo the defined variables - we use $ . so whenever we use $ then we tell the terminal that the next word right after $ is a varaible.

echo My first name is $a  #we generally call variables like this - echo My first name is ${a}
echo "And my last name is $b"
echo My full name is $c
echo My full name is $d

#variables take commands as well -
e=hostname

#just notice when we define a command to a variable then if we want to print it then we can simply write like this - $variable_name
$e

#but if we use echo with varaible then it is going to hostname as a string and not as a command 
echo $e

#if you want to echo the variable which value is a command itself, then while defining that command to a variable we use ticks(right below ESC key) like this -
d=`hostname`
echo $d

# If I want to append some string, then I would need to use {}
echo ${a}_abc