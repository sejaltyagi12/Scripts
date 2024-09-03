#!/bin/bash

#Write a Script to Read Employee Monthly Salary and Print his Bonus. The Bonus should be 25% of Annual Salary.

read -p "Enter the monthly salary of employee: " salary

annual_salary=$[salary*12]
bonus=$[annual_salary*25/100]

echo "Bonus is: ${bonus}" 