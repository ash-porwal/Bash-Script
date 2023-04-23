#!/bin/bash

# Author: Ashish Porwal
# Date Created: 21/April/2023
# Date Modified: 21/April/2023

#Description
# How Bash works - 
#  Now, when you run a script, Bash simply reads the script file line by line, and for each line, Bash
#  goes through a five step process to interpret the command and decide what to do with it.
   
#  Step1: Tokenisation: 
#          OK, so let's start at the very beginning, the moment when the shell receives a command line.
#          This command line may be typed by you on the terminal or it may be read from a script. 
#          Once the shell has got that command, it breaks the command line into what are known as tokens.
#          This step is called tokenization, and a token is defined as a sequence of characters that is considered as a single unit by the shell.

#		   The shell determines where a token starts and where a token ends by looking for special characters known as meta characters, 
#          and it uses these meta characters to break up the command line.
        
#          OK, so once Bash has broken up the line into tokens and then classifies those tokens as either words or operators, 

#          A word is defined as a token that does not contain an unquoted meta character.

#          Operators, on the other hand, are defined as tokens that contain at least one unquoted metal character.

#           *****These are Metacharacters******
#                       |
#                       &
#                       ;
#                       ()
#                       <>
#                       space, tab and newline

#   Step2: Command Identification
#            Now, based on where the words are and where the operators are, the shell then moves into step two
#            of its processing flow, which is called command identification.
#            In command identification, the shell breaks the command line up into either simple or compound commands.
#            Simple commands are the types of commands we've been using so far, such as Echo, et cetera.
#            Simple commands are just a bunch of individual words, the first word is the command name and all other
#            words are interpreted as arguments to that command.

#            Each simple command is terminated by a control operator, which may be a new line, a semicolon or something
#            else, as we'll learn later on.
#            Compound commands, on the other hand, are commands that provide Bash with its programming constructs,
#            such as 
#                if statements 
#                for loops 
#                while loops and so on.

#   Step3: Expansions
#            OK, so once Bash determined where the simple and compound commands on a given command line start
#            and end, it will then move on to step three of its process where it will perform any required expansion's.
#            This includes all the expansions that we've currently seen, as well as some new types of expansions,
#            such as word splitting and globin.

#   Step4: Quote Removal
#            After all these expansions have been performed, the shell will then move on to step four of its process,
#            which is called quote removal.
#            We often add quotes to control how a given command or command line is interpreted, so this step will
#            simply remove all of those supportive quotes.

#   Step5: Redirection
#           After quote removal Bash then moves on to its fifth and final step, which is where it performs
#           any redirections.

#   Finally, after completing these five steps, Bash will then execute the command line that is left over.

