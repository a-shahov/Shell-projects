#!/usr/bin/env bash

MAXCOUNT=10
count=1

while [[ "$count" -le $MAXCOUNT ]];
do
    number=$RANDOM
    echo $number
    let "count+=1"
done
