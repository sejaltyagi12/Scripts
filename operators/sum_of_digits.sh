#!/bin/bash

#Write a Script to Read 4 Digit Integer Number and Print the Sum of Digits Present in that Number.

read -p "Enter a 4 digit number:" n

a=$( echo $n | cut -c 1)
b=$( echo $n | cut -c 2)
c=$( echo $n | cut -c 3)
d=$( echo $n | cut -c 4)

sum=$[a+b+c+d]
echo "The sum of digits present in the number is: ${sum}" 