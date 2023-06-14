#!/bin/bash

IFS=$'\n'

result=$(grep "error CS" ${INPUT_LOGFILE})

for item in $result
do
	echo -e "$item" >> "$GITHUB_STEP_SUMMARY"
done


exit 0