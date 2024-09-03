#!/bin/bash

factorial(){
    original=$1
    n=$1
    fact=1
    while [ $n -gt 1 ]
    do
        let fact=fact*n
        let n--
    done
    echo "The factorial of $original is: $fact"
}

for i in {1..10}
do
    factorial $i
done
