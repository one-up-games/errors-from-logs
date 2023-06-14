#!/bin/bash

result=$(grep "error CS" ${INPUT_LOGFILE})

echo -e $result

echo -e "result=$result" >> "$GITHUB_OUTPUT"

exit 0