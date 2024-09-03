#!/bin/bash

echo "Variable Substitution"

a=4
b=8
echo "The values of a and b are $a and $b"

COURSE="linux"
ACTION="Sleep"
echo "I am ${ACTION}ing"
echo "My fav course is ${COURSE}"

echo "--------------------------"

echo "Command Susbstitution"

echo "Todays date is: `date +%D`"    #old style
echo "Today date is: $(date +%D)"    #new style

echo "Number of files in current working directory: $(ls | wc -l)"

echo "The number of lines in variable.sh: $(cat variable.sh | wc -l)"

echo "My working directory: $(pwd)"
