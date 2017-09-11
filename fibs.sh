#!/bin/bash


if [ $# == 0 ]; then
  echo "No command line arguments"
  exit 1 # This exits as a failure
fi

n=$1  # prints first argument

echo "Arguments $n"

 a0=0
 a1=1
stroutput=$a1

if [[ $n =~ ^[0-9]+$ ]]; then
     echo $a1
     for i in $(seq $n)
        do 
     	 #whole arithmetic expressions may be placed inside double parenthesis
         ((ai=a0+a1)) 
	  echo $ai 
          stroutput+=' '$ai
          a0=$a1
          a1=$ai                 
	done
else
    echo "not a positive interger"
     exit 1
fi

echo $stroutput
exit 0


#$let z=z+1         # --- look Mom, no $ to read a variable.
