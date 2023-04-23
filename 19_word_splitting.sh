#!/bin/bash

# Author: Ashish Porwal
# Date Created: 22/April/2023
# Date Modified: 22/April/2023

# Description
#   So what is word splitting?
#   It is process the shell performs to split the result of some unquoted expansions into separate words.
#
#   Word splitting is only perform on the results of unquoted:
        # Paramter expansion
        # Command expansion
        # Arithmetic expansion

# so word splitting is similar like Tokenization, becuase in tokenization it use meta characters to break the command line.
# similarly when shell performs Word splitting, it split words by IFS (Internal Field Separator) varibales.
#  the IFS varibales contains these by default:
        #   1. Space
        #   2. Tab
        #   3. new line

# so if we try to print IFS variable then we won't be anyting - 
        #   ashporwal@myubuntu:~$ echo "${IFS}"
            

        #   ashporwal@myubuntu:~$ 

#so, on above we can see it printed those things but we can't see them, but we can make it visible if we add @Q at the end.
        #   ashporwal@myubuntu:~$ echo "${IFS@Q}"
        #   ' \t\n'
        #   ashporwal@myubuntu:~$

# also keep in mind if something inside quote then shell won't perform word splitting.
# suppose I created a variable numbers like this, then if i run that variable with touch command then it will perform word splitting because When I am calling that variable which is $number I am calling with quote so it will perform word spitting.
# hence 4 different files are created:

        # ashporwal@myubuntu:~$ numbers='1 2 3 4'
        # ashporwal@myubuntu:~$ touch $numbers
        # ashporwal@myubuntu:~$ ls -ltr
        # -rw-rw-r--  1 ashporwal ashporwal    0 Apr 22 17:49 4
        # -rw-rw-r--  1 ashporwal ashporwal    0 Apr 22 17:49 3
        # -rw-rw-r--  1 ashporwal ashporwal    0 Apr 22 17:49 2
        # -rw-rw-r--  1 ashporwal ashporwal    0 Apr 22 17:49 1
        # ashporwal@myubuntu:~$ 

# but if we had run that variable inside quote then it will not perform world splitting and going to create file which and name is 1 2 3 4.txt
        # ashporwal@myubuntu:~$ touch "$numbers"
        # ashporwal@myubuntu:~$ ls -ltr
        # -rw-rw-r--  1 ashporwal ashporwal    0 Apr 22 17:54 '1 2 3 4'

# Now, what if we assigned varibale valube like this - 1,2,3,4
# then it is still going to perform word splitting but as comma(,) is not defined in IFS variable so it will create that one file name 1,2,3,4.txt
        # ashporwal@myubuntu:~/ashish/test$ numbers=1,2,3,4
        # ashporwal@myubuntu:~/ashish/test$ touch $numbers 
        # ashporwal@myubuntu:~/ashish/test$ ls -ltr
        # total 0
        # -rw-rw-r-- 1 ashporwal ashporwal 0 Apr 22 18:02 1,2,3,4
        # ashporwal@myubuntu:~/ashish/test$ 

# but now I want to separate these files with commas as well, suppose if you want to work with csv files then?
# so to do that, we can add comma(,) variable to IFS variable, after all it is just a variable. so now when creating files it will split them with commas.
        # ashporwal@myubuntu:~/ashish/test$ IFS=","
        # ashporwal@myubuntu:~/ashish/test$ touch $numbers 
        # ashporwal@myubuntu:~/ashish/test$ ls -ltr
        # total 0
        # -rw-rw-r-- 1 ashporwal ashporwal 0 Apr 22 18:04 4
        # -rw-rw-r-- 1 ashporwal ashporwal 0 Apr 22 18:04 3
        # -rw-rw-r-- 1 ashporwal ashporwal 0 Apr 22 18:04 2
        # -rw-rw-r-- 1 ashporwal ashporwal 0 Apr 22 18:04 1
        # ashporwal@myubuntu:~/ashish/test$ 




