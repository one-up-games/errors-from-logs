#!/bin/bash

result=$(grep "error cs" ${INPUT_LOGFILE})

status=$?

if [ "$status" -eq 0 ]; then
	echo "result=$result" >> $GITHUB_OUTPUT
fi

exit 0