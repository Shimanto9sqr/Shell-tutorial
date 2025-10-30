#!/bin/bash

# syntax array_name = (v1,v2,............,vn)

bash_arr=(1 2 3 4 5 6 7 8 9)
bash_arr=(1,2,3,4,5,6,7,8,9) #comma makes difference

#2 ways to print whole array
echo ${bash_arr[@]}
echo ${bash_arr[*]}

# print single element

echo "3rd index: ${bash_arr[3]}" #will not be accesible like this if we declare like above

simple_arr[0]=a
simple_arr[1]=b
simple_arr[2]=c

echo "2nd index: ${simple_arr[1]}" #works

for i in "${bash_arr[@]}"
do
    echo $i 
done

for i in ${simple_arr[@]}
do
    echo $i 
done

# @ -> Pass like array | * -> pass after joining single line becomes one data