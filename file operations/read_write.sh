#!/bin/bash

read -p "Enter your input: " USER_INP

echo $USER_INP

data="./input.txt"

while IFS= read -r line #IFS  dont trims
do
    echo "$line"
done < "$data" #injecting the file through variable here

##write to file syntax

echo "Write to a file by overriding" > file.txt #overrides
echo "Write to a file by appending last" >> file.txt

cat file.txt

### Redirections
# > - overrides
# >> - appends last
# 2> - overrides with stderr
# 2>> - appends err
# &> - overrides stdout & stderr
# &>> appends 

ls -l 2>> err.txt
date &>> date.txt