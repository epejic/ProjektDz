#!/bin/bash
timeM=$(($1*60))
while true
do
	timedatectl | grep Local >> log_history.log
	who -a | grep ? >> log_history.log
	printf "\n" >> log_history.log
	sleep $timeM
done
