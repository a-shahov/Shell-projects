#!/usr/bin/env bash

function usage_exit {
    echo "$0 [color|last|len|long]"
    exit
}

function ls_length {
    ls -1 "$@" | while read fn; do
        printf '%3d %s\n' ${#fn} ${fn}
    done | sort -n
}

(( $# < 1 )) && usage_exit
sub=$1
shift

case $sub in
    color) ls -N --color=tty -T 0 "$@";;
    last | latest) ls -lrt | tail "-n${1:-5}";;
    len*) ls_length "$@";;
    long) ls_length "$@" | tail -1;;
    *)
        echo "unknown command: $sub"
	usage_exit
    ;;
esac
