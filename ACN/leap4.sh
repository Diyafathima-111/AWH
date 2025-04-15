#!/bin/bash
echo "Enter the year"
read a
if (( ($a % 400 == 0) || ($a % 4 == 0 && a % 100 != 0 ) ))
then
echo "leap year"
else
echo "not leap year"
fi
