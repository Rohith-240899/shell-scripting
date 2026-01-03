#!/bin/bash

#everything in shell is considered as string

NUMBER1=100
NUMBER2=200
Name=Devops

SUM=$(($NUMBER1+$NUMBER2+$Name))
echo "the sum of 2 number is: $SUM"

LEADERS=("Modi" "Rohith" "Chinnu")

echo "All Leaders: ${LEADERS[1]}"

