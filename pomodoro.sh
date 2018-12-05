#!/bin/bash

# Pomodoro Timer by Jio Mamaoag - @gizmoxf

for REPEAT in $(eval echo {1..$1})
do
	echo "POMODORO # $REPEAT is starting"
	sleep 1500 && notify-send "break"	
	echo "POMODORO # $REPEAT has ended."
	if (($REPEAT %4 != 0))
	then
		echo "5 Minute Break!"
		sleep 300 && notify-send "Back to work"  # a short, 5-minute break
	else
		echo "15 Minute Break!"
		sleep 900 && notify-send "back to work again"  # a long, 15-minute break
	fi
	
	if (($REPEAT == $1))
	then
		echo "Your $REPEAT Pomodoros has been ended"
	else
		echo "Break if over! Get back to work!"
	fi
done
