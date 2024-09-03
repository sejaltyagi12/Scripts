#!/bin/bash

echo " Welcome to Secret Agent Application"
echo "####################################"

read -p "Enter your name: " name
first_char_name=$( echo -n $name | cut -c 1 )
if [ $first_char_name != "d" ]
then
    echo "Hey $name, thanks for the information"
    exit 1
fi

read -p "Enter your favourite actor: " actor
len=$( echo -n $actor | wc -c)
last_char_actor=$( echo -n $actor | cut -c $len )
if [ $last_char_actor != "r" ]
then
    echo "Hey $name, thanks for the information"
    exit 1
fi

read -p "Enter your lucky number: " lucky_number
if [ $lucky_number != 7 ]
then
    echo "Hey $name, thanks for the information"
    exit 1
fi

read -p "Enter your favourite dish: " dish
no_of_char=$( echo -n $dish | wc -c )
if [ $no_of_char -lt 6 ]
then
    echo "Hey $name, thanks for the information"
    exit 1
fi

echo "Hello Secret Agent....Our Next Operation is"
echo "We have to kill atleast 10 sleeping students of the room because they are a burden to country"