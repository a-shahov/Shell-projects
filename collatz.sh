#!/usr/bin/env bash

MAX_ITERATIONS=200
h=${1:-$$}

echo
echo "C($h) --- $MAX_ITERATIONS iterations"
echo

for ((a=1; a <= MAX_ITERATIONS; a++));
do
    echo -n "$h	"
    let "remainder = h % 2"
    if [[ "$remainder" -eq 0 ]]
    then
        let "h = h/2"
    else
        let "h = h*3 + 1"
    fi
   
    COLUMNS=10
    let "line_break = a % COLUMNS"
    if [[ "$line_break" -eq 0 ]]
    then
        echo
    fi
done

echo
exit 0
