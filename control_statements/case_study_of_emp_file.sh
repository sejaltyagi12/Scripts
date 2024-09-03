#!/bin/bash

echo "Write a Script to Display all Employees Information where Salary is Greater than 2500"

for record in $(cat emp.txt)
do
    salary=$(echo $record | cut -d ":" -f 3)   #extracting salary column from table
    if [ $salary -gt 2500 ]
    then
        echo $record
    fi
done

echo "--------------------------------------"

echo "Write a Script to Save all Employees Information where Salary is Greater than 2500 and City is Hyderabad to hyd.txt"

for record in $(cat emp.txt)
do
    salary=$(echo $record | cut -d ":" -f 3)
    city=$(echo $record | cut -d ":" -f 4)
    if [ $salary -gt 2500 ] && [ $city = "Hyderabad" ]
    then
        echo $record >> hyd.txt
    fi
done

echo "Check hyd.txt file for result"

echo "--------------------------------------"

echo "Write a Script to Display Minimum and Maximum Salaries"

max=$(cat emp.txt | head -1 | cut -d ":" -f 3)
min=$(cat emp.txt | head -1 | cut -d ":" -f 3)
max_record=$(cat emp.txt | head -1)
min_record=$(cat emp.txt | head -1)
for record in $(cat emp.txt)
do
 sal=$(echo $record | cut -d ":" -f 3)
 if [ $sal -gt $max ]; then
 max=$sal
 max_record=$record
 fi
 if [ $sal -lt $min ]; then
 min=$sal
 min_record=$record
 fi
done
echo "The Maximum Salary:$max"
echo "The Maximum Salaried Employeed Information:"
echo "Employee No:$(echo $max_record | cut -d ":" -f 1)"
echo "Employee Name:$(echo $max_record | cut -d ":" -f 2)"
echo "Employee Salary:$(echo $max_record | cut -d ":" -f 3)"
echo "Employee Address:$(echo $max_record | cut -d ":" -f 4)"
echo
echo "The Minimum Salary:$min"
echo "The Minimum Salaried Employeed Information:"
echo "Employee No:$(echo $min_record | cut -d ":" -f 1)"
echo "Employee Name:$(echo $min_record | cut -d ":" -f 2)"
echo "Employee Salary:$(echo $min_record | cut -d ":" -f 3)"
echo "Employee Address:$(echo $min_record | cut -d ":" -f 4)"




