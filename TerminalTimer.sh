#!/bin/sh

#  TerminalTimer.sh
#  
#http://serverfault.com/questions/532559/bash-script-count-down-5-minutes-display-on-single-line

str="Createdby ASCI-Blue on 8/18/16."

for i in $str; do

#echo -n "$i"
printf "%c" $i
sleep .4
done



#seconds=$((5 * 60))
#while [ $seconds -gt 0 ]; do
##echo -ne "$seconds\033[0K\r"
#echo
#sleep .5
#: $((seconds--))
#done