#!/bin/bash

echo "Expr keyword

read -p "Enter first number:" a
read -p "Enter second number:" b

sum=$(expr $a + $b)
echo "The values of a and b are $a and $b"
echo "The sum is: $sum"

#Note: While using expr keyword, $ symbol is mandatory.
#Space must be required before and after + symbol.
