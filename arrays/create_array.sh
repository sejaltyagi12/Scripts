#!/bin/bash

courses[0]=Java
courses[1]=Python
courses[10]=Linux
courses[20]=Docker

# ${courses[0]}  First element
# ${courses[1]}  Second element
# ${courses[@]} All elements present inside array.
# ${courses[*]}  All elements present inside array into a single string separated by first
# character in IFS(Internal Field Separator)
# ${!courses[@]} It returns all indexes where elements are available.
# ${#courses[@]} It returns the number of elements present inside array.
# ${#courses[0]}  It returns the length of first element.

echo "First element is: ${courses[0]}"
echo "Second element is: ${courses[1]}"
echo "All Elements with @ : ${courses[@]}"
echo "All elements with * : ${courses[*]}"
echo "The indices where elements are available : ${!courses[@]}"
echo "The total number of elements : ${#courses[@]}"
echo "The length of first element : ${#courses[0]}"