#!/bin/bash

: <<'Description'
Author: Ashish Porwal
Date Created: 20/August/2023
Date Modified: 20/August/2023

In this we are going to know working with Date and get the desired outputs.
Description
# ---------------------------------------------------------------------------

# Displaying the Current Date and Time:
date

# Formatting the Date Output:
date +"%Y-%m-%d"


: <<'Date_formatting'
This will display the date in the YYYY-MM-DD format.

Here are some commonly used format options:

%Y: 4-digit year
%y: 2-digit year
%m: 2-digit month
%d: 2-digit day
%H: 2-digit hour (24-hour format)
%I: 2-digit hour (12-hour format)
%M: 2-digit minute
%S: 2-digit seconds
%p: AM/PM
Date_formatting

# Getting the Date of Days Ago/From Now:

# 3 days ago
$ date --date="3 days ago" +"%Y-%m-%d"

# 3 days from now
$ date --date="3 days" +"%Y-%m-%d"

# Working with Unix Timestamps:
date +%s
#Convert a Unix timestamp back to a human-readable format:
$ date -d @1616282654

: <<'Short_hands'

date -I command is a shorthand to produce dates in the ISO 8601 date format, which is YYYY-MM-DD.
$ date -I
2023-08-20

-Ihours: Outputs date with hours (YYYY-MM-DDTHH).
$ date -Ihours
2023-08-20T14

-Iminutes: Outputs date with hours and minutes (YYYY-MM-DDTHH:MM).
$ date -Iminutes
2023-08-20T14:30

-Iseconds: Outputs date with hours, minutes, and seconds (YYYY-MM-DDTHH:MM:SS).
$ date -Iseconds
2023-08-20T14:30:45

-R: Outputs date in an RFC 5322 formatted date and time.
$ date -R
Sun, 20 Aug 2023 14:30:45 +0000

-u: Outputs the current Coordinated Universal Time (UTC).
$ date -u
Sun Aug 20 14:30:45 UTC 2023
Short_hands


: <<'Working_with_month'
Month as a Number (01-12):
$ date +"%m"

Month as an Abbreviated Name (Jan, Feb, ...):
$ date +"%b"

Month as a Full Name (January, February, ...):
$ date +"%B"

Year and Month:
$ date +"%Y-%m"