#! /bin/bash

#Write a Function to find Maximum of 3 given Integer Numbers.

max()
{
    a=$1
    b=$2
    c=$3
    if [ $a -gt $b -a $a -gt $c ]
    then
        echo "Biggest Number:$a"
    elif [ $b -gt $c ]; then
        echo "Biggest Number:$b"
    else
        echo "Biggest Number:$c"
    fi
}

read -p "Enter First Number:" n1
read -p "Enter Second Number:" n2
read -p "Enter Third Number:" n3
max $n1 $n2 $n3