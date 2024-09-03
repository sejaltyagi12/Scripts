#!/bin/bash

#Write a Script to Check whether Numbers OR Equal OR Not. If the Numbers are not Equal then Print Greater Number.

read -p "Enter first number: " a
read -p "Enter second number: " b

if [ $a -eq $b ]
then
    echo "Both numbers are equal"
elif [ $a -gt $b ]
then
    echo "First number is greater than second number"
else
    echo "Second number is greater than first number"
fi
