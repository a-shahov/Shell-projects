#!/usr/bin/env bash

while getopts ":abcde:fg" Option; do
    case $Option in
	a) echo "a $OPTARG" ;;
	b) echo "b $OPTARG" ;;
	c) echo "c $OPTARG" ;;
	d) echo "d $OPTARG" ;;
	e) echo "e $OPTARG" ;;
	f) echo "f $OPTARG" ;;
	g) echo "g $OPTARG" ;;
    esac
done
echo $(($OPTIND -1))
shift $(($OPTIND -1))
