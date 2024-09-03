#!/bin/bash

read -p "Enter the number of values: " n

for((i=0,j=1; i<n; i++))
do
    read -p "Enter The Number-$[j++]:" NUM[${i}]
done

echo "Print the Sum of Even Numbers and Odd Numbers separately"

esum=0
osum=0
for val in ${NUM[@]}
do
 if [ $[val%2] -eq 0 ]; then
 let esum=esum+val
 else
 let osum=osum+val
 fi
done
echo "The Sum of Even Numbers: $esum"
echo "The Sum of Odd Numbers: $osum"