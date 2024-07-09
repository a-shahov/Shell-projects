#!/usr/bin/env bash

if [[ ! -f $1 ]]; then
    echo "file $1 doesn't exist"
    exit 2
fi

while read line
do
    echo "$line"
done < "$1"


while IFS=: read name passwd uid gid fullname ignore
do
    echo "$name ($fullname)"
done < /etc/passwd

echo $IFS
