#!/bin/bash

<<comments
    no gap between var=3--ok, var= 3--X
    echo string / echo "string"/ echo $var/ echo "$var" -- all are accepted
comments

VAR="Hello world" # no gap between assign sign

echo $VAR
echo "$VAR"
echo "Standard Format" #Standard format to use
echo VAR #prints the string VAR
x=100
echo $x