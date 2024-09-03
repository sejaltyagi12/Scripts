#!/bin/bash

#Write a Function that takes 2 Integer Numbers as Parameters and perform Arithmetic Operations

calculator(){
    if [ $# -ne 2 ]
    then
        echo "You should pass exactly 2 arguments"
    else
        a=$1
        b=$2
        echo "$a+$b = $[a+b]"
        echo "$a-$b = $[a-b]"
        echo "$a*$b = $[a*b]"
        echo "$a/$b = $[a/b]"
    fi
}

calculator 10 
calculator 20 10