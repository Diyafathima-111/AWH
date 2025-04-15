#!/bin/bash
echo "Enter the side1"
read a
echo "Enter the side2"
read b
echo "Enter the side3"
read c
if [ $a == $b ] && [ $b == $c ]
then
echo "Equilateral tringale"
elif [ $a == $b ] || [ $b == $c ] || [ $a == $c ]
then
echo "Isosceles triangle"
else
echo "scalene triangle"
fi

