#!/bin/bash

#Write a Script that Accepts a File Name and Display User Permissions.

read -p "Enter the file: " fname

READ=NO
WRITE=NO
EXECUTE=NO

#-r -> Returns true if current user has read permission on the file
#-w -> Returns true if current user has write permission on the file
#-x -> Returns true if current user has execute permission on the file

if [ -r $fname ]
then
    READ=YES
fi

if [ -w $fname ]
then 
    WRITE=YES
fi

if [ -x $fname ]
then
    EXECUTE=YES
fi

echo "User Permissions Summary"
echo "-------------------------"
echo "Read Permission: $READ"
echo "Write Permission: $WRITE"
echo "Execute Permission: $EXECUTE"