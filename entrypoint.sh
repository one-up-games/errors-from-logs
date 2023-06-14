#!/bin/bash

IFS=$'\n'

result=$(grep "error" ${INPUT_LOGFILE})

status=$?

echo $status

if [ $status -eq 0 ]; then
	for item in $result
	do
		echo -e "$item" >> "$GITHUB_STEP_SUMMARY"
	done	
fi

exit 0