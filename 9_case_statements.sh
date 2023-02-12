#!/bin/bash

echo
echo Please chose one of the options below
echo
echo 'a = Display Date and Time'
echo 'b = List file and directories'
echo 'c = List users logged-in'
echo 'd = Check System Update'
echo
	read choices
	case $choices in
a) date;; #here we said if user selects a) then do this command
b) ls -ltr;;
c) who;;
d) uptime;;
*) echo Invalid choice - Bye
	esac
