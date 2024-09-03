#!/bin/bash

read -p "Enter any digit between 0 to 9: " n

case $n in
        0) 
          echo "ZERO"
          ;;
        1) 
          echo "ONE"
          ;;
        2) 
          echo "TWO"
          ;;
        3) 
          echo "THREE"
          ;;
        4) 
          echo "FOUR"
          ;;
        5) 
          echo "FIVE"
          ;;
        6) 
          echo "SIX"
          ;;
        7) 
          echo "SEVEN"
          ;;
        8) 
          echo "EIGHT"
          ;;
        9) 
          echo "NINE"
          ;;
        *)
          echo "Please enter digit from 0 to 9 only"
          esac