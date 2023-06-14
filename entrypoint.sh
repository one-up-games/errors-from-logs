#!/bin/bash

result=$(grep "error CS" ${INPUT_LOGFILE})

printf $result

printf "result=$result" >> "$GITHUB_OUTPUT"

exit 0