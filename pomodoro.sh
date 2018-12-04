#!/bin/bash

# Pomodoro Timer by Jio Mamaoag - @gizmoxf

for REPEAT in $(eval echo {1..$1})
do
	echo "POMODORO # $REPEAT is starting"
	sleep 1500 && notify-send "break"	
	if (($REPEAT %4 != 0))
	then
		sleep 300 && notify-send "back to work"  # a short, 5-minute break
	else
		sleep 900 && notify-send "back to work again"  # a long, 15-minute break
	fi
done
