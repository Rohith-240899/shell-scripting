#!/bin/bash

echo "Please enter the number"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ] then
    echo " Given $NUMBER is even number"
else
    echo " Given $NUMBER is odd number"
fi
