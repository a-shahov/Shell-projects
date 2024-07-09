#!/usr/bin/env bash

a=53
b=63
#comparasion="integer"
comparasion=

if false; then
    echo false false false
fi

if false;
    if [[ $comparasion = "integer" ]];
	then
	    (( a < b ))
	else
	    [[ $a < $b ]]
	fi
then
    echo '$a small then $b'
fi

a=sdf
b=22

if (( a < b ));
    then
	echo "a < b"
    else
        echo "a >= b"
fi

if [[ "a" -lt "b" ]];
    then
	echo "a < b"
    else
        echo "a >= b"
fi
