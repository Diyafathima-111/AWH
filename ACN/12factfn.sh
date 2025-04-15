#!/bin/bash

factorial() {
  num=$1
  if [ $num -le 1 ]; then
    echo 1
  else
    prev=$(factorial $((num - 1)))
    echo $((num * prev))
  fi
}

echo "Enter a number:"
read n

result=$(factorial $n)

echo "Factorial of $n is $result"

