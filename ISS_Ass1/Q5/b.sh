#!/bin/bash
read -p "Read string:" string
echo "reverse output with subsequent letter:"
length=${#string}
for((i=$length-1;i>=0;i--))
do
     reverse="$reverse${string:$i:1}"
done
result=$reverse
l2='z'
for l1 in {y..a}
do
result=${result//[$l1]/$l2}
l2=$(tr 1-9a-zA-Z 0-9a-zA-Y <<<"$l2")
done
echo $result
