#!/bin/bash

result=$(grep "error" ${INPUT_LOGFILE})

echo $result

result="test"

echo "result=$result" >> $GITHUB_OUTPUT

exit 0