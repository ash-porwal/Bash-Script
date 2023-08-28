#!/bin/bash

# Author: Ashish Porwal
# Date Created: 26/August/2023
# Date Modified: 26/August/2023

: <<'Special_variables'

$0: This usually refers to the name of the script itself.
$#: This gives the number of positional parameters (i.e., the number of arguments passed).
$*: This refers to all the arguments as a single string.
$@: This refers to all the arguments, but treats each argument as a separate quoted string.

Special_variables

echo "Script name: $0"
echo "Number of arguments: $#"
echo "All arguments as a single string: $*"
echo "All arguments as separate strings: $@"

echo "Looping in \$@"
for i in $@
do
echo "argument: $i"
done


echo "Looping in \$*"
for i in $*
do
echo "argument: $i"
done

# Running this script as ./script_name.sh A B C
