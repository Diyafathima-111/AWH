#!/bin/bash

echo "Enter first side:"
read a

echo "Enter second side:"
read b

echo "Enter third side:"
read c

if [ $((a + b)) -gt $c ] && [ $((a + c)) -gt $b ] && [ $((b + c)) -gt $a ]; then
  echo "Yes, these sides can form a triangle."
else
  echo "No, these sides cannot form a triangle."
fi

