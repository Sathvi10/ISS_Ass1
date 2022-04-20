#!/bin/bash
grep . quotes.txt
echo
echo
echo
awk '!array[$0]++' quotes.txt
