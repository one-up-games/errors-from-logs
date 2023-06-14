#!/bin/bash

IFS=$'\n'

result=$(grep "error CS" ${INPUT_LOGFILE})

echo -e $result

for item in $result
do
	echo -e "result=$item" >> "$GITHUB_STEP_SUMMARY"
done


exit 0