#!/bin/bash

result=$(grep "error cs" ${INPUT_LOGFILE})

status=$?
if [$status -eq 0 ]; then
echo "Build errors: $result" >> $GITHUB_STEP_SUMMARY
fi

echo "$result" >> $GITHUB_STEP_SUMMARY
exit 0