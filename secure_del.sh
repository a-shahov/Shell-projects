#!/usr/bin/env bash

PASSES=7
BLOCKSIZE=1

file=$1
flength=$(ls -l "$file" | awk '{print $5}')
pass_count=1

while [[ "$pass_count" -le "$PASSES" ]]; do
    sync
    dd if=/dev/urandom of=$file bs=$BLOCKSIZE count=$flength
    sync
    dd if=/dev/zero of=$file bs=$BLOCKSIZE count=$flength
    sync
    let "pass_count += 1"
done

rm -f $file
sync

exit 0
