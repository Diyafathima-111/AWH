#!/bin/bash
echo "enter first number"
read n1
echo "enter second number"
read n2
echo "enter third number"
read n3
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ];
then
echo "first is greater"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3];
then
echo "second is greater"
else
echo "third is greater"
fi
