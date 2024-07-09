#!/usr/bin/env bash

declare -a colors
read -a colors
element_count=${#colors[@]}
unset colors

array0=( first second third )
array0=( "${array0[@]}" "fourth" )
array0[${#array0[*]}]="fifth"
array0[${#array0[*]}]="test"

unset array0[${#array0[@]}-1]
declare -a array1=( ${array0[@]:1:2} )
echo "${array1[@]}"

declare -a array2=( ${array0[@]//fifth/fff} )
echo "${array2[@]}"

declare -a array3=( ${array0[@]/f/F} )
echo "${array3[@]}"

declare -a array4=( ${array0[@]#*f} )
echo "${array4[@]}"

declare -a array5=( ${array0[@]#f} )
echo "${array5[@]}"

declare -a array6=( ${array0[@]/f/gg} )
echo "${array6[@]}"
