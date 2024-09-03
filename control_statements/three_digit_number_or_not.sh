#!/bin/bash

#Write a Script that Reads an Integer Number and Checks whether it is 3 Digit Number OR not?

read -p "Enter integer number to check:" n
 if [ $n -ge 100 ] && [ $n -le 999 ]; then
 echo "$n is 3-dgit number"
 else
 echo "$n is not 3-digit number"
 fi