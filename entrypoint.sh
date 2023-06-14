#!/bin/bash

result=$(grep "error" ${INPUT_LOGFILE})

echo $result

result=$result

echo "result=$result" >> $GITHUB_OUTPUT

exit 0