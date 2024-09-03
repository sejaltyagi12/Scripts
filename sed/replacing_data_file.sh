#!/bin/bash

echo "It will replace all occurrences of durga with linux while displaying the content. It won't modify file content"
sed 's/durga/linux/g' demo.txt      #s stands for substitution
echo
echo "------------------------------------"

echo "It will replace only first occurrence in every line of durga with linux while displaying the content. It won't modify file content"
sed 's/durga/linux/' demo.txt
echo
echo "------------------------------------"

echo "While performing replacement to ignore case"
sed 's/durga/linux/gi' demo.txt
echo
echo "------------------------------------"

echo "To replace permanently in the file. This command won't display anything to the console"
sed -i 's/durga/linux/gi' demo.txt
echo
echo "------------------------------------"

echo "It replaces every blank line with 'I Like Sunny'"
sed 's/\^$/I Like Sunny/g' demo.txt
echo
echo "------------------------------------"

echo "It deletes every occurrence of sunny in the file. Here case won't be considered"
sed -i 's/\<sunny\>//gi' demo.txt
echo
echo "------------------------------------"

echo "It will delete all 3-digit words"
sed -i 's/\<[0-9][0-9][0-9]\>//g' demo.txt
echo
echo "------------------------------------"


