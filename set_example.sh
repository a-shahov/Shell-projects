#!/usr/bin/env bash

variable="one two three four five"

set -- $variable

first_param=$1
second_param=$2
shift; shift
remaining_params="$@"

echo "первый параметр = $first_param"
echo "второй параметр = $second_param"
echo "остальные параметры = $remaining_params"

set --
set $(echo $variable)

echo "первый параметр = $first_param"
echo "второй параметр = $second_param"
echo "остальные параметры = $remaining_params"
