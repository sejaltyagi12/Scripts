#!/bin/bash

read -p "Enter first string: " str1
read -p "Enter second string: " str2

if [ $str1 = $str2 ]
then
    echo "Both strings are same"
#elif [ $str1 \< $str2 ]
#The < and > characters need to be escaped with a backslash (\) when using [ for string comparisons.

elif [[ $str1 < $str2 ]]
#The [[ keyword is more flexible and allows for greater functionality. For example, it handles string comparisons with < and > without needing to escape them.
then
    echo "First string is less than second string"
else
    echo "First string is greater than second string"
fi