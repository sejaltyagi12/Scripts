#!/bin/bash

#WAS to find greater of two numbers.

read -p "Enter first number: " a
read -p "Enter second number: " b

if [ $a -gt $b ]
then 
echo "Greater number is: $a"
else
echo "Greater number is: $b"
fi
