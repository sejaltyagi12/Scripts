#!/bin/bash

declare -a fruits
fruits[10]="Apple"
fruits[20]="Banana"
fruits[30]="Orange"
fruits[40]="Mango"

echo "All Array Elements Before Removal: ${fruits[@]}"
unset fruits[20]
unset fruits[40]
echo "All Array Elements After Removal: ${fruits[@]}"