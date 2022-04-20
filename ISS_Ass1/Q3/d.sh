#!/bin/bash
read -p "file:" file
let l=0
while
read line;
do 
((l++))
w="$(wc --words <<< "$line")"
echo "line:$l words: $w"
done <$file