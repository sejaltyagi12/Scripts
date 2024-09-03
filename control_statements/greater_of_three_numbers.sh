#!/bin/bash

#Write a Script to find Greater of 3 Numbers.

read -p "Enter First Number:" a
read -p "Enter Second Number:" b
read -p "Enter Third Number:" c
if [ $a -gt $b ]
then
 if [ $a -gt $c ]
 then
 echo "The Greater Number:$a"
 else
 echo "The Greater Number:$c"
 fi
elif [ $b -gt $c ]
then
 echo "The Greater Number:$b"
else
 echo "The Greater Number:$c"
fi
