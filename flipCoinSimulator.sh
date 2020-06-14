#! /bin/bash

echo "Simlulation to displays the winner Heads or Tails"

count=1
function flipcoin()
{
	head_count=0
	tail_count=0
	first=0
	end=1
	diff=$(( end-first+1 ))

	while [[ $tail_count -lt 21 && $head_count -lt 21 ]]
	do
	        res=$(( first + $(( $RANDOM%diff )) ))

        	if [ $res -eq 0 ]
        	then
                	((head_count++))
          	      	echo "Head" $head_count
        	else
                	((tail_count++))
                	echo "Tail" $tail_count
        	fi
	done

	if [ $head_count == 21 ]
	then
		count=$(( $head_count - $tail_count ))
		echo "Head win by $count points"
		echo ""
		echo ""
	elif [ $tail_count == 21 ]
	then
		count=$(( $tail_count - $head_count ))
        	echo "Tail win by $count points"
		echo ""
		echo ""
	fi
}

while [ $count -ne 2 ]
do
	flipcoin
done
