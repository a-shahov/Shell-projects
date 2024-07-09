#!/usr/bin/env bash

keypresses=4
oldtty=$(stty -g)
stty -icanon -echo

keys=$(dd bs=1 count=$keypresses 2> /dev/null)

stty="$oldtty"
echo "$keys"
