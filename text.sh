#!/usr/bin/env bash

cat list1 list2 list3 | sort | uniq > final.txt
uname -a | cut -d" " -f1,3,11,12

FILENAME="/etc/passwd"

for user in $(cut -d: -f1 $FILENAME); do
    echo $user
done

head -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'

(shopt -s nullglob; set -- *.txt; echo $#)

echo "abcdef" | tr -d b-d

wlist=`strings "$1" | tr A-Z a-z | tr '[:space:]' Z | \
tr -cs '[:alpha:]' Z | tr -s '\173-\377' Z | tr Z ' '`
