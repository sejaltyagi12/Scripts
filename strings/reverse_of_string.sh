#!/bin/bash

read -p "Enter the string: " str
len=$(echo -n $str | wc -c)
output=""
while [ $len -gt 0 ]
do
  ch=$(echo -n $str | cut -c $len)
  output=$output$ch
  let len--
done
echo "Original string: $str"
echo "Reverse of string: $output"