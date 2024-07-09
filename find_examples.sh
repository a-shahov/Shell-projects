#!/usr/bin/env bash

exit 0

find ~/ -name '*.txt'
find ~/ -mtime 1  # recently changed
find ~/ -ctime 1  # recently attributes changed
find ~/ -atime 1  # recently accessed

DIR="/home/bozo/junk_files"
find "$DIR" -type f -atime +5 -exec rm {} \;
find /etc -type f -exec cat '{}' \; | tr -c '.[:digit:]' '\n' \
 | grep '^[^.][^.]*\.[^.][^.]*\.[^.][^.]*\.[^.][^.]*$'
find . -inum $inum -exec rm {} \;

find / -type f -print0 | xargs -0 grep -liwZ GUI | xargs -0 rm -f
grep -rliwZ GUI / | xzrgs -0 rm -f

ls . | xargs -I{} -t cp ./{} $1
