#!/bin/bash

read -p "Enter the string: " str

if [ -z $str ]
then 
    echo "String is empty"
else
    echo "String is not empty"
    echo "Its length is: $( echo -n $str | wc -c)"
fi