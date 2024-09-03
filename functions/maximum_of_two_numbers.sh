#! /bin/bash

#Write a Function to find Maximum of 2 given Integer Numbers.

max()
{
 if [ $1 -gt $2 ]; then
 echo "The Maximum of $1 and $2 :$1"
 else
 echo "The Maximum of $1 and $2: $2"
 fi
}

max 10 20
max 200 100