student_pass_or_fail.sh
#!/bin/bash

#WAS to check whether student is pass or fail based on given 3 subjects marks. In any subject if marks less than 35 then status is fail.

read -p "Enter First Subject Marks:" a
read -p "Enter Second Subject Marks:" b
read -p "Enter Third Subject Marks:" c

if [ $a -ge 35 ] && [ $b -ge 35 ] && [ $c -ge 35 ]
then
    echo "Student pass"
else
    echo "Student fail"
fi