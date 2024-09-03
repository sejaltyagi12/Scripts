#!/bin/bash

echo "Enter your name:"
read name
echo "My name is ${name}"

read -p "Enter a string:" str   #str is a variable name
len=$(echo -n $str | wc -c)   #command substitution
echo "Length of string is: ${len}"   #variable substitution

read -p "Enter any file name to display its content:" fname
echo "-----------------------"
cat $fname
echo "-----------------------"
grep -v "^$" $fname > temp.txt
mv temp.txt $fname
echo "In $fname all blank lines deleted"
cat $fname
