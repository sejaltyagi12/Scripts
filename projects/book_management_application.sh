#!/bin/bash

add_book(){
    read -p "Enter the nane of the book you want to add: " newBook
    books[$i]=$newBook
    let i++
    echo "$newBook Book Added Successfully"
    echo
}

delete_book(){
    red -p "Enter the name of the book you want to delete: " book_to_delete
    available="no"
    for index in ${!books[$@]}
    do 
        if [ ${books[$index]}= $book_to_delete ]
        then    
            available="yes"
            unset books[$index]
            echo "$book_to_delete Book Deleted Successfully"
            echo
            break
        fi
    done
    if [ $available = "no" ]
    then
        echo "$book_to_delete Book is not available, cannot be deleted" 
        echo
    fi
}

list_books(){
    if [ ${!books[@]} -eq 0 ]
    then
        echo "No books are available"
        echo 
        return 1
    fi
    echo "List Of All Available Books:"
    echo "----------------------------" 
    for book in ${books[@]}
    do
        echo $book
    done
    echo
}
echo "Welcome to DURGASOFT Book Management Application"
echo "################################################" 

declare -a books=("To Kill a Mockingbird" "1984" "The Great Gatsby" "Moby Dick")

i=0
while [ true ]
do
    read -p "Which operation you want to perform [add|delete|list|exit]: " option
    case $option in
    add)
        add_book
    ;;
    delete)
        delete_book
    ;;
    list)
        list_books
    ;;
    exit)
        echo "Thanks for using our application"
    exit 0
    ;;
    *)
        echo "Wrong option, try again...."
    esac
done