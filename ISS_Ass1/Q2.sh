#!/bin/bash
file="quotes.txt"
> speech.txt
while read -r line
do
awk -F~ '{print $2 " once said, \"" $1 "\""}' quotes.txt>>speech.txt
done <"$file"