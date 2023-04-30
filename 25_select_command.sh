#!/bin/bash

# Author: Ashish Porwal
# Date Created: 23/April/2023
# Date Modified: 23/April/2023

# Description
#   Select Command - this presents the user a menu containing different options. Then user can select the option, and then it will get selected in the variable.
#   First we need to invoke the select command inside script, so to do this - we write <select> in the script 
#   then the first bit of information that you give the select command is the name of the variable that
#   we want to save the users response in.
#   If we don't provide a variable name, the users response will be saved by default in a variable called
#   response in all uppercase.

PS3="What is the day of the week?: " #PS3 is a shell variable to control the prompt string of the select command.
select day in mon tue wed thu fri sat sun;
do
echo "Today's day is: $day"
break #defining this as I need to break the script as it gets the value, otherwise it will go for one full cycle then it is going to done it.
done #done is closing part of do command

#   ****above explanation****
#   Once we invoking select statement with command <select> then
#   we would simply type the variable name "day" after the word select.
#   Next, we write the word in which tells the select command that what follows are the options that should
#   be made available to the user.
#   In other words, the day variable can have one of the following options in the following list.
#   Now, these options are what will appear to the user in the terminal when we run the script.
#   For this example thing is, we're going to be using the days of the week
#   I'm just going to type in here the day names from Monday to Sunday separating each option with a space.
#   So the shell knows that they're separate words and thus separate options.
#   So when we finished our list of options, we type a semicolon and then the word do.
#   The semicolon tells the Select Command that our list of options is finished and we use the word <do> to
#   indicate the beginning of the list of commands we want to run after the user has provided their input.

#while selecting we just need to select the numbers instead of writing those options
