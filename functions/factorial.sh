#!/bin/bash

factorial(){
    original=$n
    fact=1
    while [ $n -gt 1 ]
    do
        let fact=fact*n
        let n--
    done
    echo "The factorial of $original is: $fact"
}

read -p "Enter a number to find factorial: " n
factorial $n