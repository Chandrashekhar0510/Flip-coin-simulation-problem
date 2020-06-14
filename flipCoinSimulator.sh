#! /bin/bash

echo "Simlulation to displays the winner Heads or Tails"

coin=$(( $RANDOM%2 ))

if [ $coin -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi

