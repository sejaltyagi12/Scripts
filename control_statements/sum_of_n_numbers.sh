#!/bin/bash

#Write a Script to find the Sum of First n Integers, where n is provided by End User.

read -p "Enter the value of n: " n

i=1
sum=0
while [ $i -le $n ]
do
    let sum=sum+i
    let i++
done

echo "The Sum of first $n numbers: $sum"