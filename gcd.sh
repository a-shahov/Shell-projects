#!/usr/bin/env bash

if [[ "$#" -lt 2 ]]; then
    echo "usage: `basename $0` divisible divider"
    exit 2
fi

pattern='^[0-9]+$'
if [[ ! "$1" =~ $pattern || ! "$2" =~ $pattern ]]; then
    echo "divider and divisible must be integers"
    exit 2
fi

divisible=$1
divider=$2
remainder=1

if [[ "$divisible" -lt "$divider" ]]; then
    echo "divisible less than divider"
    exit 2
fi

while [[ "$remainder" -ne "0" ]]; do
    let "remainder = divisible % divider"
    divisible=$divider
    divider=$remainder
done

echo "$divisible"
