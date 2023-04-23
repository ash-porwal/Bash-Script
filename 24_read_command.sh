#!/bin/bash

# Author: Ashish Porwal
# Date Created: 23/April/2023
# Date Modified: 23/April/2023

# Description
#   Read command - this command will help us assigning values in varibles
# we run this like this - read <variable> thne it will wait fotr you to give input, as I've given input - ashish now that value is stored at name varibale so now i can echo $name
    # ashporwal@myubuntu:~/ashish/lab/programmes/Bash-Script$ read name
    # ashish
    # ashporwal@myubuntu:~/ashish/lab/programmes/Bash-Script$ echo $name
    # ashish
    # ashporwal@myubuntu:~/ashish/lab/programmes/Bash-Script$ 

# so this is the usage -
read name age weight
echo "My name is $name"
echo "My age is $age"
echo "My weight is $weight"

#then when we run like this - ./myscript.sh then it will wait for you to get the all input vakues
    # ashporwal@myubuntu:~/ashish/lab/programmes/Bash-Script$ ./24_read_command.sh
    # Ashish 25 68kg            
    # My name is Ashish
    # My age is 25
    # My weight is 68kg
    # ashporwal@myubuntu:~/ashish/lab/programmes/Bash-Script$ 

#the problem will be user will have to know those what value script is expecting to make it sense, so for that we have one flag in read command is -p flag
read -p "Input your first name: " name #syntax: read -p "string" <variable you used in script>
read -p "Input your age name: " age

#again we can make read command go time out if user is taking too long to give info, NOTE: the time we have to pass is in seconds
# so to make it timeout we use -t <number of seconds it should wait for>
read -t 10 -p "Input your age name: " age #so if we don't provide anything now, then script will wait for 10secs then will move to the next lines

#and if you want to hide the user input then we can add -s flag
read -s -p "Input your age name: " age

#to know more flags we can run this in terminal - help read