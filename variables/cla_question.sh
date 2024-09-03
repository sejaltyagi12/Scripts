#!/bin/bash

#Write a Script that takes 2 Integer Numbers as Command Line Arguments and Prints Sum If Number of Arguments is not 2, then we have to get Message saying "You should provide only 2 Arguments" If the Arguments are not Integer Numbers then we have to get Message saying "You should provide Integer Numbers only"

if [ $# -ne 2 ]
then
    echo "You Should provide exactly two arguments"
    exit 1
fi

x=$1
y=$2
sum=$[x+y]
if [ $? -ne 0 ] 
then
    echo "You should provide integer numbers only"
    exit 2
else
    echo "The sum: ${sum}"
fi