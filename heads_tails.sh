#!/usr/bin/env bash

MAXCOUNT=1000

for ((i=0; i < MAXCOUNT; i++));
do
    echo $((${RANDOM} % 2))
done
