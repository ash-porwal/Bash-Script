#!/bin/bash

#note - for loop contains do, and done. so we basically here saying - i holds value 1,2 and 3... do print value of i
for i in 1 2 3
do
	echo $i
done	


#looping in string 
for i in a b c
do
        echo $i
done

: <<'Reading_from_file'

suppose if there are many items we need to write it down for iteration, like
for i in 1 2 3 4 5 6 7 and so on...

so instead of doing it, I can create a file and store all values there, then I can cat that file

for i in `cat num.txt` #just remember to encapsulate the command in pair of back quote (tick)

or we can use this too
for i in $(cat num.txt)


In case specifying a range we can do it with curly brackets - {}
for i in {0..50} # we need to specify starting and ending point of sequence
Reading_from_file