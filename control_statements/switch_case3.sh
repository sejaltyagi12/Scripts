#! /bin/bash 

read -p "Enter Any Character to check: " ch 

case $ch in

        [a-zA-Z])
            echo "It is an Alphabet symbol"
            ;;
        [0-9])
            echo "It is a Digit"
            ;;
        [^a-zA-Z0-9])
            echo "It is a Special Symbol"
            ;;
        *)
            echo "Enter only one character"
            esac