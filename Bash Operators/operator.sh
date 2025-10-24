#!/bin/bash

a=10
b=20
mul=`expr $a \* $b` #if inside parenthesis backslash not necessary
val=`expr $(($a + $b)) / $a - $(($b * $a)) % $(($a + 5)) ` #wrapped in dounle parenthesis it works #precedence as always () > */% > +-

echo $mul
echo $val

echo $(($a * 5 + $b / 5))
echo $((a*5+b/5)) # also works like this but remeber to wrap it twice

if [ $a == $b ]
then
echo "Truth"
fi

if [ $a != $b ]
then
echo "Negative"
fi

#
# -eq -> equals, -ne -> not equals, -gt -> Greater than, -lt -> less than, -ge -> greater than and equal, -ls -> less than and equal 
#

#
# ! -> NOT, -o -> OR, -a -> AND
#

if [ $a -ne $b -a $a -gt 5 ]
then
    echo "Sth"
else
    echo "else sth"
fi

#
# -z -> check empty , -n -> check not empty
#

FILE=/e/shell_tutorial/Basic/array.sh

if [ -r $FILE -a -w $FILE ] # -r -> check read -w -> check write -x -> check executable -f -> ordinary file -d -> directory
then
    touch code.txt
    $FILE >> code.txt
    echo "File has read access also write access"
else
    echo "No read Access and write access"
fi

cat code.txt
