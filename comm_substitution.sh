#!/usr/bin/env bash

old_stty=$(stty -g)
echo "Press any button "
stty -icanon -echo

key=$(dd bs=1 count=1 2>/dev/null)
stty $old_stty

echo "Number of keys pressed ${#key}"
