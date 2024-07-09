#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo "usage $(basename "$0") /path/to/file"
    exit 1
fi

filename="$1"

case "$filename" in
    ./*) echo -n "local" ;&
    [^/]*) echo -n "relative" ;;&
    /*) echo -n "absolute" ;&
    */*) echo -n "pathname" ;;
    *) echo "filename" ;;
esac
