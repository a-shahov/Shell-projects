#!/usr/bin/env bash

FILE="/swap"
BLOCKSIZE=1024
MINBLOCKS=40

blocks=${1:-$MINBLOCKS}
if [[ "$blocks" -lt $MINBLOCKS ]]; then blocks=$MINBLOCKS; fi

dd if=/dev/zero of=$FILE bs=$BLOCKSIZE count=$blocks

mkswap $FILE $blocks
swapon $FILE

exit 0
