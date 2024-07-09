#!/usr/bin/env bash

exec 3>&1
ls -l 2>&1 >&3 | grep bad 3>&-
ls -l | grep bad 3>&-
exec 3>&-

exec 6<&0
exec < data_file

read a1
read a2
echo "$a1 $a2"

exec 0<&6 6<&-
