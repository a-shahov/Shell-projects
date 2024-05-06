#!/usr/bin/env bash

PASSWORD=

if [[ -z "$PASSWORD" ]] then
    for ((i=0; i<3; i++));
    do
        IFS= read -r -s -p 'password: ' pass1
	echo
	IFS= read -r -s -p 'repeat password: ' pass2
	echo
	if [[ $pass1 = $pass2 ]] then
	    PASSWORD=$pass1
	    break
	fi
	echo "passwords don't match"
    done
fi
