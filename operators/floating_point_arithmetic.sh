#!/bin/bash 

echo "bc stands for binary calculator, bc command is used to do floating point arithmetic"
read -p "Enter first number: " a
read -p "Enter second number: " b

sum=$(echo $a*$b | bc)
echo "The sum is: ${sum}"
