#!/bin/bash
### Rather than using "read", you can use command line arguments
### myinput=$1
read myinput
echo $myinput


if [[ $myinput =~ ^[0-9]+$ ]]; then
    echo "this is positive interger"
	for i in $(seq $myinput); do echo '' $i''; done
	exit 0 # This exits as a success
else
    echo "Sorry, positive integers only"
	exit 1
fi




#=~ is the "regular expression match" operator
#^ matches with beginning of string
#[0-9] matches a digit
#+ one or more of the previous (i.e. digit)
#$ end of string
