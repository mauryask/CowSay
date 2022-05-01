#! /usr/bin/env bash

paths=/usr/share/cowsay/cows

cowarr=()

for path in "$paths"/*;do
     cowarr+=(`echo $path | grep -o '[^/]*$' | cut -d "."  -f1`)
   done 

declare -i arrsize="${#cowarr[@]}"
echo $arrsize
declare -i randindex=$((RANDOM % $arrsize))
cowsay -f  "${cowarr[$randindex]}" "Hello World"

