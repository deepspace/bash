#!/bin/bash
if [ $# -eq 1 ]; then
    if [ -e $1 ]; then
       echo "file $1 exists"
    else
       echo "file $1 not found"
   fi
else
    echo "Usage: fe filename - report the existence of a file"
fi
