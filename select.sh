#!/usr/bin/env bash

PS3='Your preferable vegetable: '

choice_of() {
    select vegetable
    do
        echo "your vegetable is $vegetable"
        break
    done
}

choice_of beans rice carrot tomato
exit 0
