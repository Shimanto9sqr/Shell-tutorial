#!/bin/bash

<<comments
  ret = returns
  $0 -> ret file name
  $1 -$9 -> ret arguments/ for arguments
  $# -> total num of args passed in script
  $* -> stores all cmd args by joining them
  $@ -> ret a array of arguments
  $? -> ret PID of current script
  $$ -> exit status
  $! -> ret ID of last bg job

comments

echo $0
echo $1
echo $4
echo $9
echo $@
echo $*
echo $#
echo $?

count1=0
echo -e "\nUsing \"\$*\":"  # need backslash before every special character
for a in "$*";
do
    echo $a
    echo $((count1++))
done

count2=0

echo -e "\nUsing \"\$@\":"
for a in "$@";
do
    echo $a; 
    ((count2++)) # weird way to increment wrap inside parenthesis!!
done

echo $count2

#run ./cmdarg.sh shell script