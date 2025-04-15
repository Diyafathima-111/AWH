#!/bin/bash

echo "Enter starting number:"
read start

echo "Enter ending number:"
read end

while [ $start -le $end ]
do
  if [ $((start % 2)) -eq 0 ]; then
    echo $start
  fi
  start=$((start + 1))
done


