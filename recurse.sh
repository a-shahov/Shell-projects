#!/usr/bin/env bash

MINARGS=1
DATAFILE=./phonebook
PROGNAME="$0"
E_NOARGS=70

if [[ $# -lt $MINARGS ]]; then
    echo "$PROGNAME data"
    exit $E_NOARGS
fi

if [[ $# -eq $MINARGS ]]; then
    grep $1 "$DATAFILE"
else
    ( shift; "$PROGNAME" $* ) | grep $1
fi

exit 0
