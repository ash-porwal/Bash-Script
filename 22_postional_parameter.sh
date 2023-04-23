#!/bin/bash

# Author: Ashish Porwal
# Date Created: 22/April/2023
# Date Modified: 22/April/2023

# Description
#   In this we are going to know about postional parameters
#   So, when you create some script and you are going to give some input then those parametes will come.

# suppose i created one file and in that file, i wrote like this -
        #!/bin/bash
        # echo “My Name is $1”
        # echo “My home directory is $2”
        # echo “My favourite colour is $3”
# so when we execute this script we need to assign values of $1, $2, $3

#execution of script -
# ./myscript.sh Ashish $HOME Orange 
#then we will get this output:
        # My Name is Ashish
        # My home directory is /home/ashporwal
        # My favourite colour is Orange
#and we can also define those variables inside scripts as well.

# and if we define postional paratmeter like this -
        #!/bin/bash
        # echo “My Name is $1”
        # echo “My home directory is $2”
        # echo “My favourite colour is $3”
        # echo “The 10th number is {$10}”
        # echo “The 11th number is $11”
# now if we run the above script it then it is going to give thise output
# running script with input values - ./myscript.sh a b c d e f g h i j k
#   My Name is a
#   My hime directory is b
#   My favourite color is c
#   The 10th number is j
#   The 11th number is a1

# notice in above the out of last line is not what it was expected, it gives out a1 because we simply calling $11 so it will give us the value of $1 then in a1 output, that 1 is last digit of $11.