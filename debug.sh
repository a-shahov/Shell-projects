#!/usr/bin/env bash

trap 'echo "TRACE> $LINENO: variable = $variable"' DEBUG

variable=29
echo "$variable ok"
let "variable *= 3"
echo "$variable ok"

exit 0
