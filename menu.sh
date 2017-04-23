#!/bin/bash

echo 'Please choose an option: '
echo '1: change to directory one'
echo '2: change to directory two'
echo '3: change to directory three'
echo '4: change to directory Projects'
echo '5: change to directory Projects/bash'
echo 'Q: quit'
read choice

bashdir='/c/users/peter/projects/bash/'

case $choice in
1)                              # The ) is a regexp
        cd ${bashdir}one/
        ;;
2)
        cd ${bashdir}two/
        ;;
3)
        cd ${bashdir}three/
        ;;
4)      
        cd ~/projects/ 
        ;;
5)      
        cd ${bashdir}
        ;;
[Qq])
        ;;
*)                      # *) indicates anything else than 1 2 3 Q or q 
        echo 'Incorrect menu entry.'
esac
