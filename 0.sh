#!/bin/bash

# Author: Ashish Porwal
# Date Created: 12/Feb/2023
# Date Modified: 20/August/2023

# Description
# Will add execution file permission to all file present in working directory.
# We can also run our bash script as a command just keep in mind when running as a command don't mention extension .sh in script name.
# like instead of do_this.sh write do_this and then add its path to environment variable.
# Whenever we create a script and make it run as a command then operating system looks at the path configured in the path environment variables
# to locate the executable or script

# Suppose i did - 
# ash-MacBook-Air:Bash-Script dev$ echo $PATH
# /usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
# Now whatever output we got it is some path, so if my executable file is not listed in any of these paths then it won't be apple to run that script as a command

# Usage
# Add execution file permission
# Add script path to environment PATH varaible

# to make files executbale
chmod a+x *

# to add file path to PATH variable
export PATH=$PATH:/your/path/to/that/script

# if you want to see the location of executables
which <command>
