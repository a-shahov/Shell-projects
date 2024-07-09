#!/usr/bin/env bash

echo hello!

if [[ -t 1 ]]; then
    exec 7>&1
    coproc tee log >&7

    exec 7>&-
    exec 7>&${COPROC[1]}-
    exec 1>&7
    exec 2>&7-
    eval "exec ${COPROC[0]}>&-"
fi

echo test
echo test2 >&2

