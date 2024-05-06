#!/usr/bin/env bash

while [[ "$1" != "" ]]; do
    case "$1" in
        -q) shift 1; FIRST="$1" ;;
	-w) shift 1; SECOND="$1" ;;
	-e) shift 1; THIRD="$1" ;;
    esac
    shift 1
done

echo "$FIRST" "$SECOND" "$THIRD"
