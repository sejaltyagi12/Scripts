#!/bin/bash

#Write a Script that Reads an Integer Number and Checks whether it is Even Number OR not?

read -p "Enter integer number to check: " n

if [ $[n%2] -eq 0 ]
then 
    echo "Even number"
else
    echo "Odd number"
fi