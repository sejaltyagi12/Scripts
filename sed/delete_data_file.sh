#!/bin/bash

echo "To Delete a Particular Line"
echo
echo "While displaying records, it will delete 3rd record. But this line won't be deleted in the file"
sed '3d' emp_data1.txt        #d stands for deletion
echo
echo "------------------------------------"

echo "To Delete Last Line"
echo
echo "While displaying records, it will delete last record. But this line won't be deleted in the file"
sed '$d' emp_data1.txt
echo 
echo "------------------------------------"

echo "To Delete a Permanently in the File"
echo 
echo "This command won't display anything to the console but 5th record in the file will be deleted"
sed -i '5d' emp_data1.txt   #-i meant for deleting record permanently in the file
echo
echo "------------------------------------"

echo "To Delete Range of Lines"
echo 
echo "It will delete all records from 1st to last in the file"
sed -i '2,3d' emp_data1.txt
echo
echo "------------------------------------"

echo "To Delete specified Lines"
echo
echo "After 1d we are using enter key. It will delete first and last records"
# sed -i '1d
# > $d' emp_data1.txt
echo

