#!/bin/bash

# Valid var name as C/C++ --> [_|a-z|A-Z][_|a-z|A-Z|0-9]*
# use CAPITALIZED or as u wish
#this are local vars
STRING="Shell Scripting"
attempt=2

echo $STRING
unset STRING
echo $STRING #prints a newline
echo $attempt
