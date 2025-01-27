#!/usr/bin/env bash


if [[ -z "$1" ]]; then
    echo "No command number passed"
    exit 2
fi

history
exists=$(fc -l -10000 | grep "^$1" -- 2>/dev/null)

if [[ -n "$exists" ]]; then
    fc -s -- "$1"
else
    echo "Command with number $1 was not found in recent history"
    exit 2
fi
