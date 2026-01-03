#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "given number is less then 10"
elif [ $NUMBER -eq 10 ]; then
    echo "given number is equal to 10"
else
    echo "given number is greater the 10"
fi 
#gt
#eq
#ne

