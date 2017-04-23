#!/bin/bash 

# counts from 1 to $1 using for, while, and until loops. 

# ensure only one argument:

if [ $# -eq 1 ]; then # make sure the number of arguments =1 then run the loops

    # a counter variable: 
    counter="1" 

    echo "for loop:" 
    for i in $( seq 1 $1 ); do 
        echo $i 
    done

    echo "while loop:" 
    while [ $counter -le $1 ]; do # -le = less or equal 
        echo $counter
        counter=$(( counter + 1 ))
    done

    counter="1"

    echo "until loop:"
    until [ $counter -gt $1 ]; do   # -gt = greater than
        echo $counter
        counter=$(( counter + 1))
    done 

else 
    echo "USAGE: $0 <count> - where count is the value to be"
    echo "counted to."
fi


