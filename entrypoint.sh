#!/bin/bash

IFS=$'\n'

result=$(grep "error" ${INPUT_LOGFILE})

status=$?

if [ $status -eq 0 ]; then
	echo "=====ERRORS=====" >> "$GITHUB_STEP_SUMMARY"
	for item in $result
	do
		echo -e "$item" >> "$GITHUB_STEP_SUMMARY"
	done	
fi

exit 0