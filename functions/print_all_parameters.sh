#!/bin/bash

parameters_printing(){
    if [ $# -eq 0 ]
    then
        echo "No parameters passed to this function"
    else
        echo "All passed parameters are: "
        echo ".........................."
        for p in $@
        do 
            echo $p 
        done
    fi
}

parameters_printing
parameters_printing A B C D E