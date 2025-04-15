#!/bin/bash
echo "enter a number"
read n
if [ $((n % 2)) == 0 ]
then
echo "number is even"
else
echo "odd"
fi

