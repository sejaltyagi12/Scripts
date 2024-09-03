#!/bin/bash

names="/home/sejal/scripts/name"

for name in $(cat $names)
do
    echo Names are $name
done  
