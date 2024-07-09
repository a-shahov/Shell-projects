#!/usr/bin/env bash

bottom=1.0
principal=1000
interest_r=12
term=12


interest_r=$(echo "scale=9; $interest_r/100.0" | bc)
interest_rate=$(echo "scale=9; $interest_r/12 + 1.0" | bc)
top=$(echo "scale=9; $principal*$interest_rate^$term" | bc)

let "months = $term - 1"
for ((x=$months; x > 0; x--)); do
    bot=$(echo "scale=9; $interest_rate^$x" | bc)
    bottom=$(echo "scale=9; $bottom+$bot" | bc)
done

payment=$(echo "scale=2; $top/$bottom" | bc)

echo "${!payment}"
exit 0
