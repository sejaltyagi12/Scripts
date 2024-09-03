#!/bin/bash

#WAS to Read Name from the End User and if Name is Sunny then Display some Special Message.

read -p "Enter your name: " name

if [ $name = "Sunny" ]
then 
echo "Hello Sunny, Good Evening"
fi
echo "How are you?"

