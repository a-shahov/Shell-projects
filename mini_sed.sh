#!/usr/bin/env bash

filename="$1"

#sed -e '/^$/d' $filename
sed -e '/[0-9A-Za-z]/,/^$/{/^$/d}' $filename
