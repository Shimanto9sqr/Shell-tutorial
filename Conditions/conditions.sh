#!/bin/bash

a=10
b=11
#Same as C but with fi
if [ $a -eq $b ]
then
    statements/instructions 
fi 

if [ $a -eq $b ]
then
    statements/instructions
else
    statements/instructions
fi

if [ $a -eq $b ]
then
statements/instructions
elif [ condition ]
then
    statements/instructions
else
fi