#!/bin/bash
read -p "Read string:" string
arr=${string}
l=${#arr}
for ((i=$l/2-1;i>=0;i--))
do
rev="$rev${string:$i:1}"
done
for ((i=$l/2;i<=$l;i++))
do
rev="$rev${string:$i:1}"
done
echo "only the half string in reverse:"
echo "$rev"