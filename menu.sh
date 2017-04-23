#!/bin/bash

echo 'Please choose an option: '
echo '1: change to directory one'
echo '2: change to directory two'
echo '3: change to directory three'
echo 'Q: quit'
read choice

bashdir='/home/pnxb57/Documents/'

case $choice in
1)
        cd ${bashdir}one/
        ;;
2)
        cd ${bashdir}two/
        ;;
3)
        cd ${bashdir}three/
        ;;
[Qq])
        ;;
*)                      # *) indicates anything else than 1 2 3 Q or q 
        echo 'Incorrect menu entry.'
esac
