#!/bin/bash

func () {
    echo 'Function call'
}

func 

args_pass () {
    echo "It was passed $1"
}

args_pass $1

add () {
    x=$1
    y=$2
    z=`expr $(($x + $y))` #can only add integer?
    echo "Sum is $z"
    echo $(($x * 5 + $y / 2 ))
}

add 3 2 # passing $1 = 3, $2 = 3
