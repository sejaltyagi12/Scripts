#!/bin/bash


read -p "Enter first number:" a
read -p "Enter second number:" b

echo "By using (())"
sum=$(($a+$b))
echo "The values of a and b are $a and $b"
echo "The sum is: $sum"


echo "By using []" 
sum=$[$a+$b]
echo "The values of a and b are $a and $b"
echo "The sum is: $sum"

#Note: Both $ symbol and space are optional.