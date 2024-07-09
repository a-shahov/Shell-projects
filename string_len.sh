#!/usr/bin/env bash

stringZ=abcAAasdfqwer124

echo ${#stringZ}
echo `expr length $stringZ`
echo `expr "$stringZ" : '.*'`

echo `expr match "$stringZ" 'abc[A-Z]*'`
echo `expr "$stringZ" : 'abc[A-Z]*'`

echo $(expr index "$stringZ" A)

echo ${stringZ:2:2}
echo $(expr substr $stringZ 2 2)

echo "here"
echo $(expr match "$stringZ" '\(.[a-c]*.\)')

echo ${stringZ#a*A}
echo ${stringZ##a*A}

echo ${stringZ/a/@@@}
echo ${stringZ//a/@@@}
echo ${stringZ/#a/@@@}

echo ${stringZ/b/@@@}
echo ${stringZ/#b/@@@}
