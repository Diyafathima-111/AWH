#!/bin/bash
echo "Enter a number"
read num
if ( $num -le 1 );
then
	echo "$num Not a prime"
	exit 1
fi
for (( i=2; i<$num; i++ ));
do
	if ((num % i == 0));
	then
		echo "$num is not a prime"
	exit 1
	fi
done
echo "$num is a prime number"
