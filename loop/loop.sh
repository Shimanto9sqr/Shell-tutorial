#!/bin/bash

a=11

while [ $a -lt 20 ]
do
    echo instructions
    a=`expr $a + 1`
done

arr=(1,2,3,4,5)

for var in $arr
do
    echo statements $var
done

for(( c=1; c<=5; c++))
do
    echo $c 
done

files=$(ls -a| cut -d' ' -f 3) #syntax for writing commands
for f in $files
do
    echo $f
done

#can use break and continue like C

i=0
while [[ $i -lt 10 ]]
do
    ((i++))

    if [[ $i -eq 5 ]]; then
        continue
    fi
    echo "Break and Continue: $i"
    if [[ $i -eq 7 ]]; then
        break
    fi
done