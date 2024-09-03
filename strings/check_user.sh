#!/bin/bash

user=$(whoami)

if [ $user != root ]
then
    echo "Current user is not root user and hence existing"
    exit 1
fi

echo "The Five Current Running Processes information"
echo "=============================================="
ps -ef | head -5

