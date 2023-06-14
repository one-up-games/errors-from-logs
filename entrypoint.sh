#!/bin/bash

result=$(grep "error cs" ${INPUT_LOGFILE})

echo $result
echo "result=$result" >> $GITHUB_OUTPUT

exit 0