#!/bin/bash

echo "Display Specific Line Multiple Times"
echo
echo "It will display total file content but 2nd line will be displayed 2 times"
sed '2p' emp_data.txt         #p stands for print
echo
echo "------------------------------------"

echo "Display only specific Line"
echo
echo "It will display only 3rd line"
sed -n '3p' emp_data.txt
echo 
echo "------------------------------------"

echo "Display Last Line"
echo 
echo "It will display only last line"
sed -n '$p' emp_data.txt
echo
echo "------------------------------------"

echo "Display Multiple Lines in Range"
echo
echo "it will display from 2nd to 4th lines"
sed -n '2,4p' emp_data.txt
echo
echo "------------------------------------"

echo "Display only specific Independent Lines"
echo 
echo " After 2p we have to enter new line. It will delete only 2nd and 4th lines"
sed -n -e '2p' -e '4p' emp_data.txt
echo
echo "------------------------------------"

echo "Display all Lines except specific Line"
echo
sed -n '2!p' emp_data.txt
echo
echo "------------------------------------"

echo "Display all Lines except Range of Line"
echo
sed -n '2,4!p' emp_data.txt
echo
echo "------------------------------------"

echo "Display all Lines having specific Word"
echo
echo "It will display all lines which contains admin"
sed -n '/admin/p' emp_data.txt
echo
echo "------------------------------------"





 









