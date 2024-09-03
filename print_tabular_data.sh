#!/bin/bash

# While procesing tabular data
# $0  Represents Each Line/Record
# $1  Represents First Field(column) in the current line/record
# $2  Represents Second Field(column) in the current line/record
# $3  Represents Third Field(column) in the current line/record
# etc

echo "To Print only 1st Column Data"
awk '{print $1}' emp_tabular_data.txt
echo "------------------------------"

echo "To Print 1st and 3rd Columns Data"
awk '{print $1" "$3}' emp_tabular_data.txt
awk '{print $1"-->"$3}' emp_tabular_data.txt
echo "------------------------------"

echo "To Print all Columns Data"
awk '{print $0}' emp_tabular_data.txt
echo "------------------------------"
