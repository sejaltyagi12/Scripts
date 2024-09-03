#!/bin/bash

prime_check(){
    n=$1
    if [ $n -lt 0 ]
    then
        echo "$n is not a prime number"
    else
        is_prime="YES"
        for((i=2;i<n;i++))
        do
            if [ $[n%i] -eq 0 ]
            then
                echo "$n is not a prime number"
                is_prime="NO"
                break
            fi
        done
    if [ $is_prime =  "YES" ]
    then
        echo "$n is a prime number"
    fi
    fi
}

read -p "Enter Any Number to test whether it is Prime or not:" n
prime_check $n