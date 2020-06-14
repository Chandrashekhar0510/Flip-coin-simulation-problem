#! /bin/bash

echo "Simlulation to displays the winner Heads or Tails"


head_count=0
tail_count=0
first=0
end=1
diff=$(( end-first+1 ))

while [[ $tail_count -lt 11 && $head_count -lt 11 ]]
do
        res=$(( first + $(( $RANDOM%diff )) ))
        #echo $res

        if [ $res -eq 0 ]
        then
                ((head_count++))
                echo "Head" $head_count
        else
                ((tail_count++))
                echo "Tail" $tail_count
        fi

        if [ $head_count == 11 ]
        then
                echo "Head win"
        elif [ $tail_count == 11 ]
        then
                echo "Tail win"
        fi
done
