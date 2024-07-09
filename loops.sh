#!/usr/bin/env bash

for a in 1 2 3 4 5 6 7 8 9
do
    echo $a
done

LIMIT=10

for ((a=1; a <= LIMIT; a++));
do
    echo $a
done

LIMIT=10
var0=0

while [[ "$var0" -lt "$LIMIT" ]]; do
    echo -n "$var0 "
    let "var0 += 1"
done

echo
((a = 1))
while (( a <= LIMIT)); do
    echo -n "$a "
    ((a += 1))
done

echo
((a = 1))
until (( a == LIMIT )); do
    echo -n "$a "
    ((a += 1))
done

echo
for outerloop in 1 2 3 4 5
do
    echo -n "$outerloop: "

    for innerloop in 1 2 3 4 5
    do
        echo -n "$innerloop "
        if [[ "$innerloop" -eq 3 ]]
        then
    	    break 2
        fi
    done
done

echo
COUNT=80
for a in $(seq $COUNT); do
    echo -n "$a "
done

var1=$(for i in $(seq 5)
do
    echo -n "$i"
done)

echo
echo "var1 = $var1"
