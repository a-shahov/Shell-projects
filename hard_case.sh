#!/usr/bin/env bash

SELF="$0"

action="$1"
shift

case "$action" in
    
    ### Headers
    h1) # The first level header
	echo "h1: $action" ;;
    h2) # The second level header
	echo "h2: $action" ;;
    h3) # The third lever header
	echo "h3: $action" ;;

    ### Lists
    bul|bullet) # Bulleted list
        echo "bullet: $action" ;;
    nul|number|order*) # Numbered list
	echo "number: $action" ;;
    term) # Terms
	echo "terms: $action" ;;
    
    id) ## Convert to id
	echo "id: $action" ;;
    index) ## Create "index.txt" in directory AsciiDoc
	echo "index: $action" ;;
    
    *)
	( echo "Usage:"
	egrep '\)[[:space:]]+# ' $0
	echo ''
	egrep '\)[[:space:]]+## ' $0
	echo ''
	egrep '\)[[:space:]]+### ' $0 ) | grep "${1:-.}" | more ;;

esac

