#!/bin/bash

# Store the command and its arguments in a variable
cmd="$*"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    time -f '%es %Mk' $cmd
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    output=$( ( /usr/bin/time -l $cmd ) 2>&1 1>/dev/null )

    # Extract the elapsed time and maximum resident set size from the output
    elapsedTime=$(echo "$output" | grep -Eo '[0-9]+\.[0-9]+ real' | awk '{print $1}')
    maxResidentSetSize=$(echo "$output" | grep -Eo '[0-9]+ maximum resident set size' | awk '{print $1}')

    # Convert maximum resident set size to kilobytes (if it's in bytes)
    maxResidentSetSizeKb=$((maxResidentSetSize / 1024))

    # Print the elapsed time and maximum resident set size in the desired format
    echo "${elapsedTime}s ${maxResidentSetSizeKb}k"
else
    echo "OS not supported"
    exit 1
fi
