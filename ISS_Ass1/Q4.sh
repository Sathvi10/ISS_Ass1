#!/bin/bash
IFS=',' read -r -a a
n=${#a[@]}
for ((p=0;p<$n;p++))
do
for ((q=p+1;q<$n;q++))
do
if [ ${a[$p]} -gt ${a[$q]} ];
then
r=${a[$p]}
a[$p]=${a[$q]}
a[$q]=$r
fi
done
done
for ((p=0; p<$n; p++))
do
echo ${a[$p]}
done