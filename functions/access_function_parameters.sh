#!/bin/bash

function demo(){
    echo "First Parameter: $1"
    echo "Second Parameter: $2"
    echo "Third Parameter: $3"
    echo "Total Number of Paramerters: $#"
    echo "All Parameters with @: $@"
    echo "All Parameters with *: $*"
    echo "Script Name:$0"
}

demo sejal tyagi wittybrains 10 20

wish()
{
    if [ $# -eq 0 ]; then
        echo "Hello Guest Good Evening"
    else
        echo "Hello $1 Good Evening"
    fi
}
wish 
wish Sejal