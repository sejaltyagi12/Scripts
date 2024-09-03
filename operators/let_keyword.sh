#!/bin/bash

echo "Let keyword"
read -p "Enter first number:" a
read -p "Enter second number:" b

let sum=$a+$b
echo "The values of a and b are $a and $b"
echo "The sum is: $sum"

#Note: $ symbol is optional. But we should not provide space before and after +.