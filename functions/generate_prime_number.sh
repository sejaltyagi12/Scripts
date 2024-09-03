#!/bin/bash

#) Write a Function to generate Prime Numbers which are Less than OR Equal to given Number.

prime_numbers_generator()
{
 n=$1
 for((n1=2;n1<=n;n1++))    #Repeat from 2 to n every number to test
 do
 is_prime="yes"
 for((i=2;i<n1;i++))    #To test current number n1 is prime or not
 do
 if [ $[n1%i] -eq 0 ]; then
 is_prime="no"
 break
 fi
 done
 if [ $is_prime = yes ]; then
 echo $n1
 fi
 done
}

read -p "Enter N value:" n
prime_numbers_generator $n