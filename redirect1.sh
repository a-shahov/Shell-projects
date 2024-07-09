#!/usr/bin/env bash

exec 3>log.txt

echo "test" | tee /dev/fd/3
