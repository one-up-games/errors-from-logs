#!/bin/bash

result=$(grep "error" ${INPUT_LOGFILE})

for item in $result
do
	echo -e "$item" >> "$GITHUB_STEP_SUMMARY"
done


exit 0